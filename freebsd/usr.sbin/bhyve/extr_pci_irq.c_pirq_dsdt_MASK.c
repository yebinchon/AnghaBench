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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PIRQ_DIS ; 
 int PIRQ_IRQ ; 
 int /*<<< orphan*/  FUNC1 (char**,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  irq_counts ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pirqs ; 

__attribute__((used)) static void
FUNC5(void)
{
	char *irq_prs, *old;
	int irq, pin;

	irq_prs = NULL;
	for (irq = 0; irq < FUNC4(irq_counts); irq++) {
		if (!FUNC0(irq))
			continue;
		if (irq_prs == NULL)
			FUNC1(&irq_prs, "%d", irq);
		else {
			old = irq_prs;
			FUNC1(&irq_prs, "%s,%d", old, irq);
			FUNC3(old);
		}
	}

	/*
	 * A helper method to validate a link register's value.  This
	 * duplicates pirq_valid_irq().
	 */
	FUNC2("");
	FUNC2("Method (PIRV, 1, NotSerialized)");
	FUNC2("{");
	FUNC2("  If (And (Arg0, 0x%02X))", PIRQ_DIS);
	FUNC2("  {");
	FUNC2("    Return (0x00)");
	FUNC2("  }");
	FUNC2("  And (Arg0, 0x%02X, Local0)", PIRQ_IRQ);
	FUNC2("  If (LLess (Local0, 0x03))");
	FUNC2("  {");
	FUNC2("    Return (0x00)");
	FUNC2("  }");
	FUNC2("  If (LEqual (Local0, 0x08))");
	FUNC2("  {");
	FUNC2("    Return (0x00)");
	FUNC2("  }");
	FUNC2("  If (LEqual (Local0, 0x0D))");
	FUNC2("  {");
	FUNC2("    Return (0x00)");
	FUNC2("  }");
	FUNC2("  Return (0x01)");
	FUNC2("}");

	for (pin = 0; pin < FUNC4(pirqs); pin++) {
		FUNC2("");
		FUNC2("Device (LNK%c)", 'A' + pin);
		FUNC2("{");
		FUNC2("  Name (_HID, EisaId (\"PNP0C0F\"))");
		FUNC2("  Name (_UID, 0x%02X)", pin + 1);
		FUNC2("  Method (_STA, 0, NotSerialized)");
		FUNC2("  {");
		FUNC2("    If (PIRV (PIR%c))", 'A' + pin);
		FUNC2("    {");
		FUNC2("       Return (0x0B)");
		FUNC2("    }");
		FUNC2("    Else");
		FUNC2("    {");
		FUNC2("       Return (0x09)");
		FUNC2("    }");
		FUNC2("  }");
		FUNC2("  Name (_PRS, ResourceTemplate ()");
		FUNC2("  {");
		FUNC2("    IRQ (Level, ActiveLow, Shared, )");
		FUNC2("      {%s}", irq_prs);
		FUNC2("  })");
		FUNC2("  Name (CB%02X, ResourceTemplate ()", pin + 1);
		FUNC2("  {");
		FUNC2("    IRQ (Level, ActiveLow, Shared, )");
		FUNC2("      {}");
		FUNC2("  })");
		FUNC2("  CreateWordField (CB%02X, 0x01, CIR%c)",
		    pin + 1, 'A' + pin);
		FUNC2("  Method (_CRS, 0, NotSerialized)");
		FUNC2("  {");
		FUNC2("    And (PIR%c, 0x%02X, Local0)", 'A' + pin,
		    PIRQ_DIS | PIRQ_IRQ);
		FUNC2("    If (PIRV (Local0))");
		FUNC2("    {");
		FUNC2("      ShiftLeft (0x01, Local0, CIR%c)", 'A' + pin);
		FUNC2("    }");
		FUNC2("    Else");
		FUNC2("    {");
		FUNC2("      Store (0x00, CIR%c)", 'A' + pin);
		FUNC2("    }");
		FUNC2("    Return (CB%02X)", pin + 1);
		FUNC2("  }");
		FUNC2("  Method (_DIS, 0, NotSerialized)");
		FUNC2("  {");
		FUNC2("    Store (0x80, PIR%c)", 'A' + pin);
		FUNC2("  }");
		FUNC2("  Method (_SRS, 1, NotSerialized)");
		FUNC2("  {");
		FUNC2("    CreateWordField (Arg0, 0x01, SIR%c)", 'A' + pin);
		FUNC2("    FindSetRightBit (SIR%c, Local0)", 'A' + pin);
		FUNC2("    Store (Decrement (Local0), PIR%c)", 'A' + pin);
		FUNC2("  }");
		FUNC2("}");
	}
	FUNC3(irq_prs);
}