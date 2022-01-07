
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct al_eth_lm_init_params {scalar_t__ sfp_detection; scalar_t__ retimer_exist; int led_config; int lm_pause; int sfp_detect_force_mode; int max_speed; int gpio_present; int gpio_get; int kr_fec_enable; int get_random_byte; int i2c_context; int * i2c_write; int * i2c_read; int static_values; int rx_equal; int link_training; int default_dac_len; int default_mode; int retimer_tx_channel; int retimer_channel; int retimer_i2c_addr; int retimer_bus_id; int retimer_type; int sfp_i2c_addr; int sfp_bus_id; int lane; int serdes_obj; int adapter; } ;
struct TYPE_2__ {int selector_field; int fec_capability; int technology; scalar_t__ next_page; scalar_t__ acknowledge; scalar_t__ remote_fault; scalar_t__ capability; } ;
struct al_eth_lm_context {scalar_t__ sfp_detection; scalar_t__ retimer_exist; int rx_param_dirty; int tx_param_dirty; int link_state; scalar_t__ retimer_configured; int led_config; int lm_pause; int sfp_detect_force_mode; int max_speed; int gpio_present; int gpio_get; scalar_t__ serdes_rx_params_valid; scalar_t__ serdes_tx_params_valid; int mode; TYPE_1__ local_adv; int * i2c_write; int * i2c_read; int get_random_byte; int i2c_context; int static_values; int rx_equal; int link_training; int default_dac_len; int default_mode; int retimer_tx_channel; int retimer_channel; int retimer_i2c_addr; int retimer_bus_id; int retimer_type; int sfp_i2c_addr; int sfp_bus_id; int lane; int serdes_obj; int adapter; } ;


 int AL_ETH_AN_TECH_10GBASE_KR ;
 int AL_ETH_LM_LINK_DOWN ;
 int AL_ETH_LM_MODE_DISCONNECTED ;
 scalar_t__ FALSE ;
 int al_assert (int) ;

int
al_eth_lm_init(struct al_eth_lm_context *lm_context,
    struct al_eth_lm_init_params *params)
{

 lm_context->adapter = params->adapter;
 lm_context->serdes_obj = params->serdes_obj;
 lm_context->lane = params->lane;
 lm_context->sfp_detection = params->sfp_detection;
 lm_context->sfp_bus_id = params->sfp_bus_id;
 lm_context->sfp_i2c_addr = params->sfp_i2c_addr;

 lm_context->retimer_exist = params->retimer_exist;
 lm_context->retimer_type = params->retimer_type;
 lm_context->retimer_bus_id = params->retimer_bus_id;
 lm_context->retimer_i2c_addr = params->retimer_i2c_addr;
 lm_context->retimer_channel = params->retimer_channel;
 lm_context->retimer_tx_channel = params->retimer_tx_channel;

 lm_context->default_mode = params->default_mode;
 lm_context->default_dac_len = params->default_dac_len;
 lm_context->link_training = params->link_training;
 lm_context->rx_equal = params->rx_equal;
 lm_context->static_values = params->static_values;
 lm_context->i2c_read = params->i2c_read;
 lm_context->i2c_write = params->i2c_write;
 lm_context->i2c_context = params->i2c_context;
 lm_context->get_random_byte = params->get_random_byte;


 al_assert((lm_context->sfp_detection == FALSE) ||
     (lm_context->i2c_read != ((void*)0)));

 al_assert((lm_context->retimer_exist == FALSE) ||
     (lm_context->i2c_write != ((void*)0)));

 lm_context->local_adv.selector_field = 1;
 lm_context->local_adv.capability = 0;
 lm_context->local_adv.remote_fault = 0;
 lm_context->local_adv.acknowledge = 0;
 lm_context->local_adv.next_page = 0;
 lm_context->local_adv.technology = AL_ETH_AN_TECH_10GBASE_KR;
 lm_context->local_adv.fec_capability = params->kr_fec_enable;

 lm_context->mode = AL_ETH_LM_MODE_DISCONNECTED;
 lm_context->serdes_tx_params_valid = FALSE;
 lm_context->serdes_rx_params_valid = FALSE;

 lm_context->rx_param_dirty = 1;
 lm_context->tx_param_dirty = 1;

 lm_context->gpio_get = params->gpio_get;
 lm_context->gpio_present = params->gpio_present;

 lm_context->max_speed = params->max_speed;
 lm_context->sfp_detect_force_mode = params->sfp_detect_force_mode;

 lm_context->lm_pause = params->lm_pause;

 lm_context->led_config = params->led_config;

 lm_context->retimer_configured = FALSE;

 lm_context->link_state = AL_ETH_LM_LINK_DOWN;

 return (0);
}
