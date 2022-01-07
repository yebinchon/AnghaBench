; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_destroy_ah.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_destroy_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ah = type { i32 }
%struct.qlnxr_dev = type { i32* }
%struct.qlnxr_ah = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"in destroy_ah\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlnxr_destroy_ah(%struct.ib_ah* %0) #0 {
  %2 = alloca %struct.ib_ah*, align 8
  %3 = alloca %struct.qlnxr_dev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.qlnxr_ah*, align 8
  store %struct.ib_ah* %0, %struct.ib_ah** %2, align 8
  %6 = load %struct.ib_ah*, %struct.ib_ah** %2, align 8
  %7 = call %struct.qlnxr_ah* @get_qlnxr_ah(%struct.ib_ah* %6)
  store %struct.qlnxr_ah* %7, %struct.qlnxr_ah** %5, align 8
  %8 = load %struct.ib_ah*, %struct.ib_ah** %2, align 8
  %9 = getelementptr inbounds %struct.ib_ah, %struct.ib_ah* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.qlnxr_dev* @get_qlnxr_dev(i32 %10)
  store %struct.qlnxr_dev* %11, %struct.qlnxr_dev** %3, align 8
  %12 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %3, align 8
  %13 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %4, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @QL_DPRINT12(i32* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.qlnxr_ah*, %struct.qlnxr_ah** %5, align 8
  %18 = call i32 @kfree(%struct.qlnxr_ah* %17)
  ret i32 0
}

declare dso_local %struct.qlnxr_ah* @get_qlnxr_ah(%struct.ib_ah*) #1

declare dso_local %struct.qlnxr_dev* @get_qlnxr_dev(i32) #1

declare dso_local i32 @QL_DPRINT12(i32*, i8*) #1

declare dso_local i32 @kfree(%struct.qlnxr_ah*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
