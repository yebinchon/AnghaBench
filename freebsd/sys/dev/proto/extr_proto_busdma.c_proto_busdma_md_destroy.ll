; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/proto/extr_proto_busdma.c_proto_busdma_md_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/proto/extr_proto_busdma.c_proto_busdma_md_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proto_busdma = type { i32 }
%struct.proto_md = type { i32* }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.proto_busdma*, %struct.proto_md*)* @proto_busdma_md_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proto_busdma_md_destroy(%struct.proto_busdma* %0, %struct.proto_md* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.proto_busdma*, align 8
  %5 = alloca %struct.proto_md*, align 8
  store %struct.proto_busdma* %0, %struct.proto_busdma** %4, align 8
  store %struct.proto_md* %1, %struct.proto_md** %5, align 8
  %6 = load %struct.proto_md*, %struct.proto_md** %5, align 8
  %7 = getelementptr inbounds %struct.proto_md, %struct.proto_md* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @ENXIO, align 4
  store i32 %11, i32* %3, align 4
  br label %16

12:                                               ; preds = %2
  %13 = load %struct.proto_busdma*, %struct.proto_busdma** %4, align 8
  %14 = load %struct.proto_md*, %struct.proto_md** %5, align 8
  %15 = call i32 @proto_busdma_md_destroy_internal(%struct.proto_busdma* %13, %struct.proto_md* %14)
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %12, %10
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

declare dso_local i32 @proto_busdma_md_destroy_internal(%struct.proto_busdma*, %struct.proto_md*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
