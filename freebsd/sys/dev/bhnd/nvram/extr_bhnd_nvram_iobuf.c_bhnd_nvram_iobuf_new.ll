; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_iobuf.c_bhnd_nvram_iobuf_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_iobuf.c_bhnd_nvram_iobuf_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_nvram_io = type { i32 }
%struct.bhnd_nvram_iobuf = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bhnd_nvram_io* @bhnd_nvram_iobuf_new(i8* %0, i64 %1) #0 {
  %3 = alloca %struct.bhnd_nvram_io*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.bhnd_nvram_io*, align 8
  %7 = alloca %struct.bhnd_nvram_iobuf*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call %struct.bhnd_nvram_io* @bhnd_nvram_iobuf_empty(i64 %8, i64 %9)
  store %struct.bhnd_nvram_io* %10, %struct.bhnd_nvram_io** %6, align 8
  %11 = icmp eq %struct.bhnd_nvram_io* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store %struct.bhnd_nvram_io* null, %struct.bhnd_nvram_io** %3, align 8
  br label %25

13:                                               ; preds = %2
  %14 = load %struct.bhnd_nvram_io*, %struct.bhnd_nvram_io** %6, align 8
  %15 = bitcast %struct.bhnd_nvram_io* %14 to %struct.bhnd_nvram_iobuf*
  store %struct.bhnd_nvram_iobuf* %15, %struct.bhnd_nvram_iobuf** %7, align 8
  %16 = load %struct.bhnd_nvram_iobuf*, %struct.bhnd_nvram_iobuf** %7, align 8
  %17 = getelementptr inbounds %struct.bhnd_nvram_iobuf, %struct.bhnd_nvram_iobuf* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = load %struct.bhnd_nvram_iobuf*, %struct.bhnd_nvram_iobuf** %7, align 8
  %21 = getelementptr inbounds %struct.bhnd_nvram_iobuf, %struct.bhnd_nvram_iobuf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @memcpy(i32 %18, i8* %19, i32 %22)
  %24 = load %struct.bhnd_nvram_io*, %struct.bhnd_nvram_io** %6, align 8
  store %struct.bhnd_nvram_io* %24, %struct.bhnd_nvram_io** %3, align 8
  br label %25

25:                                               ; preds = %13, %12
  %26 = load %struct.bhnd_nvram_io*, %struct.bhnd_nvram_io** %3, align 8
  ret %struct.bhnd_nvram_io* %26
}

declare dso_local %struct.bhnd_nvram_io* @bhnd_nvram_iobuf_empty(i64, i64) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
