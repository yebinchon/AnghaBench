; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/spi/extr_spi.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/spi/extr_spi.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1203 x i8] c" - communicate on SPI bus with slave devices\0AUsage:\0A        spi [-f device] [-d r|w|rw] [-m mode] [-s max-speed] [-c count]\0A            [-C \22command bytes\22] [-A] [-b] [-L] [-v]\0A        spi -i [-f device] [-v]\0A        spi -h\0A where\0A        -f specifies the device (default is spigen0.0)\0A        -d specifies the operation (r, w, or rw; default is rw)\0A        -m specifies the mode (0, 1, 2, or 3)\0A        -s specifies the maximum speed (default is 0, device default)\0A        -c specifies the number of data bytes to transfer (default 0, i.e. none)\0A           A negative value uses the length of the input data\0A        -C specifies 'command bytes' to be sent, as 2 byte hexadecimal values\0A           (these should be quoted, separated by optional white space)\0A        -L specifies 'LSB' order on the SPI bus (default is MSB)\0A        -i query information about the device\0A        -A uses ASCII for input/output as 2-digit hex values\0A        -b Override output format as binary (only valid with '-A')\0A        -v verbose output\0A        -h prints this message\0A\0ANOTE:  setting the mode and/or speed is 'sticky'.  Subsequent transactions\0A       on that device will, by default, use the previously set values.\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = call i8* (...) @getprogname()
  %2 = load i32, i32* @stderr, align 4
  %3 = call i32 @fputs(i8* %1, i32 %2)
  %4 = load i32, i32* @stderr, align 4
  %5 = call i32 @fputs(i8* getelementptr inbounds ([1203 x i8], [1203 x i8]* @.str, i64 0, i64 0), i32 %4)
  ret void
}

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i8* @getprogname(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
