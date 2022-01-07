; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cardbus/extr_cardbus_device.c_cardbus_device_buffer_cis.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cardbus/extr_cardbus_device.c_cardbus_device_buffer_cis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cis_buffer = type { i32 }
%struct.tuple_callbacks = type { i8*, i32, i32 }

@CISTPL_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"GENERIC\00", align 1
@cardbus_build_cis = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.cis_buffer*)* @cardbus_device_buffer_cis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cardbus_device_buffer_cis(i32 %0, i32 %1, %struct.cis_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cis_buffer*, align 8
  %7 = alloca [1 x %struct.tuple_callbacks], align 16
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.cis_buffer* %2, %struct.cis_buffer** %6, align 8
  %8 = getelementptr inbounds [1 x %struct.tuple_callbacks], [1 x %struct.tuple_callbacks]* %7, i64 0, i64 0
  %9 = getelementptr inbounds %struct.tuple_callbacks, %struct.tuple_callbacks* %8, i32 0, i32 0
  %10 = load i32, i32* @CISTPL_GENERIC, align 4
  %11 = sext i32 %10 to i64
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** %9, align 16
  %13 = getelementptr inbounds %struct.tuple_callbacks, %struct.tuple_callbacks* %8, i32 0, i32 1
  store i32 ptrtoint ([8 x i8]* @.str to i32), i32* %13, align 8
  %14 = getelementptr inbounds %struct.tuple_callbacks, %struct.tuple_callbacks* %8, i32 0, i32 2
  %15 = load i32, i32* @cardbus_build_cis, align 4
  store i32 %15, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %5, align 4
  %18 = getelementptr inbounds [1 x %struct.tuple_callbacks], [1 x %struct.tuple_callbacks]* %7, i64 0, i64 0
  %19 = load %struct.cis_buffer*, %struct.cis_buffer** %6, align 8
  %20 = call i32 @cardbus_parse_cis(i32 %16, i32 %17, %struct.tuple_callbacks* %18, %struct.cis_buffer* %19)
  ret i32 %20
}

declare dso_local i32 @cardbus_parse_cis(i32, i32, %struct.tuple_callbacks*, %struct.cis_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
