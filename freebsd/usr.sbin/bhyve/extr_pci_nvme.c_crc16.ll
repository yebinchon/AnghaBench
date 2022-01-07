; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_nvme.c_crc16.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_nvme.c_crc16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crc16.crc16_table = internal constant [256 x i32] [i32 0, i32 49345, i32 49537, i32 320, i32 49921, i32 960, i32 640, i32 49729, i32 50689, i32 1728, i32 1920, i32 51009, i32 1280, i32 50625, i32 50305, i32 1088, i32 52225, i32 3264, i32 3456, i32 52545, i32 3840, i32 53185, i32 52865, i32 3648, i32 2560, i32 51905, i32 52097, i32 2880, i32 51457, i32 2496, i32 2176, i32 51265, i32 55297, i32 6336, i32 6528, i32 55617, i32 6912, i32 56257, i32 55937, i32 6720, i32 7680, i32 57025, i32 57217, i32 8000, i32 56577, i32 7616, i32 7296, i32 56385, i32 5120, i32 54465, i32 54657, i32 5440, i32 55041, i32 6080, i32 5760, i32 54849, i32 53761, i32 4800, i32 4992, i32 54081, i32 4352, i32 53697, i32 53377, i32 4160, i32 61441, i32 12480, i32 12672, i32 61761, i32 13056, i32 62401, i32 62081, i32 12864, i32 13824, i32 63169, i32 63361, i32 14144, i32 62721, i32 13760, i32 13440, i32 62529, i32 15360, i32 64705, i32 64897, i32 15680, i32 65281, i32 16320, i32 16000, i32 65089, i32 64001, i32 15040, i32 15232, i32 64321, i32 14592, i32 63937, i32 63617, i32 14400, i32 10240, i32 59585, i32 59777, i32 10560, i32 60161, i32 11200, i32 10880, i32 59969, i32 60929, i32 11968, i32 12160, i32 61249, i32 11520, i32 60865, i32 60545, i32 11328, i32 58369, i32 9408, i32 9600, i32 58689, i32 9984, i32 59329, i32 59009, i32 9792, i32 8704, i32 58049, i32 58241, i32 9024, i32 57601, i32 8640, i32 8320, i32 57409, i32 40961, i32 24768, i32 24960, i32 41281, i32 25344, i32 41921, i32 41601, i32 25152, i32 26112, i32 42689, i32 42881, i32 26432, i32 42241, i32 26048, i32 25728, i32 42049, i32 27648, i32 44225, i32 44417, i32 27968, i32 44801, i32 28608, i32 28288, i32 44609, i32 43521, i32 27328, i32 27520, i32 43841, i32 26880, i32 43457, i32 43137, i32 26688, i32 30720, i32 47297, i32 47489, i32 31040, i32 47873, i32 31680, i32 31360, i32 47681, i32 48641, i32 32448, i32 32640, i32 48961, i32 32000, i32 48577, i32 48257, i32 31808, i32 46081, i32 29888, i32 30080, i32 46401, i32 30464, i32 47041, i32 46721, i32 30272, i32 29184, i32 45761, i32 45953, i32 29504, i32 45313, i32 29120, i32 28800, i32 45121, i32 20480, i32 37057, i32 37249, i32 20800, i32 37633, i32 21440, i32 21120, i32 37441, i32 38401, i32 22208, i32 22400, i32 38721, i32 21760, i32 38337, i32 38017, i32 21568, i32 39937, i32 23744, i32 23936, i32 40257, i32 24320, i32 40897, i32 40577, i32 24128, i32 23040, i32 39617, i32 39809, i32 23360, i32 39169, i32 22976, i32 22656, i32 38977, i32 34817, i32 18624, i32 18816, i32 35137, i32 19200, i32 35777, i32 35457, i32 19008, i32 19968, i32 36545, i32 36737, i32 20288, i32 36097, i32 19904, i32 19584, i32 35905, i32 17408, i32 33985, i32 34177, i32 17728, i32 34561, i32 18368, i32 18048, i32 34369, i32 33281, i32 17088, i32 17280, i32 33601, i32 16640, i32 33217, i32 32897, i32 16448], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @crc16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crc16(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %5, align 8
  store i8* %8, i8** %7, align 8
  br label %9

9:                                                ; preds = %13, %3
  %10 = load i32, i32* %6, align 4
  %11 = add i32 %10, -1
  store i32 %11, i32* %6, align 4
  %12 = icmp ne i32 %10, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %9
  %14 = load i32, i32* %4, align 4
  %15 = ashr i32 %14, 8
  %16 = and i32 %15, 255
  %17 = load i32, i32* %4, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %7, align 8
  %20 = load i8, i8* %18, align 1
  %21 = zext i8 %20 to i32
  %22 = xor i32 %17, %21
  %23 = and i32 %22, 255
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [256 x i32], [256 x i32]* @crc16.crc16_table, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = xor i32 %16, %26
  %28 = and i32 %27, 65535
  store i32 %28, i32* %4, align 4
  br label %9

29:                                               ; preds = %9
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
