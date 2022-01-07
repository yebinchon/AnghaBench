; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_link.c_link_AddInOctets.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_link.c_link_AddInOctets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.link*, i32)* @link_AddInOctets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @link_AddInOctets(%struct.link* %0, i32 %1) #0 {
  %3 = alloca %struct.link*, align 8
  %4 = alloca i32, align 4
  store %struct.link* %0, %struct.link** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.link*, %struct.link** %3, align 8
  %6 = getelementptr inbounds %struct.link, %struct.link* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %2
  %11 = load %struct.link*, %struct.link** %3, align 8
  %12 = getelementptr inbounds %struct.link, %struct.link* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @throughput_addin(i32* %13, i32 %14)
  %16 = load %struct.link*, %struct.link** %3, align 8
  %17 = getelementptr inbounds %struct.link, %struct.link* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %10
  %22 = load %struct.link*, %struct.link** %3, align 8
  %23 = getelementptr inbounds %struct.link, %struct.link* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @throughput_addin(i32* %25, i32 %26)
  br label %28

28:                                               ; preds = %21, %10
  br label %29

29:                                               ; preds = %28, %2
  ret void
}

declare dso_local i32 @throughput_addin(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
