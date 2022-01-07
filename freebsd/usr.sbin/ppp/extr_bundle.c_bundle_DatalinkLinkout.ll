; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_DatalinkLinkout.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_DatalinkLinkout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bundle = type { %struct.datalink* }
%struct.datalink = type { %struct.datalink* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.datalink* (%struct.bundle*, %struct.datalink*)* @bundle_DatalinkLinkout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.datalink* @bundle_DatalinkLinkout(%struct.bundle* %0, %struct.datalink* %1) #0 {
  %3 = alloca %struct.datalink*, align 8
  %4 = alloca %struct.bundle*, align 8
  %5 = alloca %struct.datalink*, align 8
  %6 = alloca %struct.datalink**, align 8
  store %struct.bundle* %0, %struct.bundle** %4, align 8
  store %struct.datalink* %1, %struct.datalink** %5, align 8
  %7 = load %struct.bundle*, %struct.bundle** %4, align 8
  %8 = getelementptr inbounds %struct.bundle, %struct.bundle* %7, i32 0, i32 0
  store %struct.datalink** %8, %struct.datalink*** %6, align 8
  br label %9

9:                                                ; preds = %29, %2
  %10 = load %struct.datalink**, %struct.datalink*** %6, align 8
  %11 = load %struct.datalink*, %struct.datalink** %10, align 8
  %12 = icmp ne %struct.datalink* %11, null
  br i1 %12, label %13, label %33

13:                                               ; preds = %9
  %14 = load %struct.datalink**, %struct.datalink*** %6, align 8
  %15 = load %struct.datalink*, %struct.datalink** %14, align 8
  %16 = load %struct.datalink*, %struct.datalink** %5, align 8
  %17 = icmp eq %struct.datalink* %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = load %struct.datalink*, %struct.datalink** %5, align 8
  %20 = getelementptr inbounds %struct.datalink, %struct.datalink* %19, i32 0, i32 0
  %21 = load %struct.datalink*, %struct.datalink** %20, align 8
  %22 = load %struct.datalink**, %struct.datalink*** %6, align 8
  store %struct.datalink* %21, %struct.datalink** %22, align 8
  %23 = load %struct.datalink*, %struct.datalink** %5, align 8
  %24 = getelementptr inbounds %struct.datalink, %struct.datalink* %23, i32 0, i32 0
  store %struct.datalink* null, %struct.datalink** %24, align 8
  %25 = load %struct.bundle*, %struct.bundle** %4, align 8
  %26 = call i32 @bundle_LinksRemoved(%struct.bundle* %25)
  %27 = load %struct.datalink*, %struct.datalink** %5, align 8
  store %struct.datalink* %27, %struct.datalink** %3, align 8
  br label %34

28:                                               ; preds = %13
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.datalink**, %struct.datalink*** %6, align 8
  %31 = load %struct.datalink*, %struct.datalink** %30, align 8
  %32 = getelementptr inbounds %struct.datalink, %struct.datalink* %31, i32 0, i32 0
  store %struct.datalink** %32, %struct.datalink*** %6, align 8
  br label %9

33:                                               ; preds = %9
  store %struct.datalink* null, %struct.datalink** %3, align 8
  br label %34

34:                                               ; preds = %33, %18
  %35 = load %struct.datalink*, %struct.datalink** %3, align 8
  ret %struct.datalink* %35
}

declare dso_local i32 @bundle_LinksRemoved(%struct.bundle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
