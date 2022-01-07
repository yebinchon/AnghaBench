; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_Down.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_Down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bundle = type { %struct.datalink* }
%struct.datalink = type { %struct.datalink* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bundle_Down(%struct.bundle* %0, i32 %1) #0 {
  %3 = alloca %struct.bundle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.datalink*, align 8
  store %struct.bundle* %0, %struct.bundle** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bundle*, %struct.bundle** %3, align 8
  %7 = getelementptr inbounds %struct.bundle, %struct.bundle* %6, i32 0, i32 0
  %8 = load %struct.datalink*, %struct.datalink** %7, align 8
  store %struct.datalink* %8, %struct.datalink** %5, align 8
  br label %9

9:                                                ; preds = %16, %2
  %10 = load %struct.datalink*, %struct.datalink** %5, align 8
  %11 = icmp ne %struct.datalink* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = load %struct.datalink*, %struct.datalink** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @datalink_Down(%struct.datalink* %13, i32 %14)
  br label %16

16:                                               ; preds = %12
  %17 = load %struct.datalink*, %struct.datalink** %5, align 8
  %18 = getelementptr inbounds %struct.datalink, %struct.datalink* %17, i32 0, i32 0
  %19 = load %struct.datalink*, %struct.datalink** %18, align 8
  store %struct.datalink* %19, %struct.datalink** %5, align 8
  br label %9

20:                                               ; preds = %9
  ret void
}

declare dso_local i32 @datalink_Down(%struct.datalink*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
