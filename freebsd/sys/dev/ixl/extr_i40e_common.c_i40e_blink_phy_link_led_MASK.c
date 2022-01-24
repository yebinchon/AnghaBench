#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
typedef  int u16 ;
struct i40e_hw {int dummy; } ;
typedef  enum i40e_status_code { ____Placeholder_i40e_status_code } i40e_status_code ;

/* Variables and functions */
 int /*<<< orphan*/  I40E_PFGEN_PORTNUM ; 
 scalar_t__ I40E_PFGEN_PORTNUM_PORT_NUM_MASK ; 
 int /*<<< orphan*/  I40E_PHY_COM_REG_PAGE ; 
 int I40E_PHY_LED_LINK_MODE_MASK ; 
 int I40E_PHY_LED_MANUAL_ON ; 
 int I40E_PHY_LED_PROV_REG_1 ; 
 int I40E_SUCCESS ; 
 scalar_t__ FUNC0 (struct i40e_hw*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (struct i40e_hw*,int /*<<< orphan*/ ,int,scalar_t__,int*) ; 
 int FUNC3 (struct i40e_hw*,int /*<<< orphan*/ ,int,scalar_t__,int) ; 
 scalar_t__ FUNC4 (struct i40e_hw*,int /*<<< orphan*/ ) ; 

enum i40e_status_code FUNC5(struct i40e_hw *hw,
					      u32 time, u32 interval)
{
	enum i40e_status_code status = I40E_SUCCESS;
	u32 i;
	u16 led_ctl = 0;
	u16 gpio_led_port;
	u16 led_reg;
	u16 led_addr = I40E_PHY_LED_PROV_REG_1;
	u8 phy_addr = 0;
	u8 port_num;

	i = FUNC4(hw, I40E_PFGEN_PORTNUM);
	port_num = (u8)(i & I40E_PFGEN_PORTNUM_PORT_NUM_MASK);
	phy_addr = FUNC0(hw, port_num);

	for (gpio_led_port = 0; gpio_led_port < 3; gpio_led_port++,
	     led_addr++) {
		status = FUNC2(hw,
							 I40E_PHY_COM_REG_PAGE,
							 led_addr, phy_addr,
							 &led_reg);
		if (status)
			goto phy_blinking_end;
		led_ctl = led_reg;
		if (led_reg & I40E_PHY_LED_LINK_MODE_MASK) {
			led_reg = 0;
			status = FUNC3(hw,
							 I40E_PHY_COM_REG_PAGE,
							 led_addr, phy_addr,
							 led_reg);
			if (status)
				goto phy_blinking_end;
			break;
		}
	}

	if (time > 0 && interval > 0) {
		for (i = 0; i < time * 1000; i += interval) {
			status = FUNC2(hw,
						I40E_PHY_COM_REG_PAGE,
						led_addr, phy_addr, &led_reg);
			if (status)
				goto restore_config;
			if (led_reg & I40E_PHY_LED_MANUAL_ON)
				led_reg = 0;
			else
				led_reg = I40E_PHY_LED_MANUAL_ON;
			status = FUNC3(hw,
						I40E_PHY_COM_REG_PAGE,
						led_addr, phy_addr, led_reg);
			if (status)
				goto restore_config;
			FUNC1(interval);
		}
	}

restore_config:
	status = FUNC3(hw,
						  I40E_PHY_COM_REG_PAGE,
						  led_addr, phy_addr, led_ctl);

phy_blinking_end:
	return status;
}