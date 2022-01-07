; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/fwcontrol/extr_fwcontrol.c_parse_bus_info_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/fwcontrol/extr_fwcontrol.c_parse_bus_info_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.eui64 = type { i32 }

@EUI64_SIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [127 x i8] c"bus_name: 0x%04x\0Airmc:%d cmc:%d isc:%d bmc:%d pmc:%d\0Acyc_clk_acc:%d max_rec:%d max_rom:%d\0Ageneration:%d link_spd:%d\0AEUI64: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @parse_bus_info_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_bus_info_block(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.bus_info*, align 8
  %6 = alloca %struct.eui64, align 4
  store i32* %0, i32** %2, align 8
  %7 = load i32, i32* @EUI64_SIZ, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = bitcast i32* %11 to %struct.bus_info*
  store %struct.bus_info* %12, %struct.bus_info** %5, align 8
  %13 = load %struct.bus_info*, %struct.bus_info** %5, align 8
  %14 = getelementptr inbounds %struct.bus_info, %struct.bus_info* %13, i32 0, i32 11
  %15 = call i32 @fweui2eui64(i32* %14, %struct.eui64* %6)
  %16 = trunc i64 %8 to i32
  %17 = call i32 @eui64_ntoa(%struct.eui64* %6, i8* %10, i32 %16)
  %18 = load %struct.bus_info*, %struct.bus_info** %5, align 8
  %19 = getelementptr inbounds %struct.bus_info, %struct.bus_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.bus_info*, %struct.bus_info** %5, align 8
  %22 = getelementptr inbounds %struct.bus_info, %struct.bus_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.bus_info*, %struct.bus_info** %5, align 8
  %25 = getelementptr inbounds %struct.bus_info, %struct.bus_info* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.bus_info*, %struct.bus_info** %5, align 8
  %28 = getelementptr inbounds %struct.bus_info, %struct.bus_info* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.bus_info*, %struct.bus_info** %5, align 8
  %31 = getelementptr inbounds %struct.bus_info, %struct.bus_info* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.bus_info*, %struct.bus_info** %5, align 8
  %34 = getelementptr inbounds %struct.bus_info, %struct.bus_info* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.bus_info*, %struct.bus_info** %5, align 8
  %37 = getelementptr inbounds %struct.bus_info, %struct.bus_info* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.bus_info*, %struct.bus_info** %5, align 8
  %40 = getelementptr inbounds %struct.bus_info, %struct.bus_info* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.bus_info*, %struct.bus_info** %5, align 8
  %43 = getelementptr inbounds %struct.bus_info, %struct.bus_info* %42, i32 0, i32 8
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.bus_info*, %struct.bus_info** %5, align 8
  %46 = getelementptr inbounds %struct.bus_info, %struct.bus_info* %45, i32 0, i32 9
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.bus_info*, %struct.bus_info** %5, align 8
  %49 = getelementptr inbounds %struct.bus_info, %struct.bus_info* %48, i32 0, i32 10
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @printf(i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23, i32 %26, i32 %29, i32 %32, i32 %35, i32 %38, i32 %41, i32 %44, i32 %47, i32 %50, i8* %10)
  %52 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %52)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fweui2eui64(i32*, %struct.eui64*) #2

declare dso_local i32 @eui64_ntoa(%struct.eui64*, i8*, i32) #2

declare dso_local i32 @printf(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
