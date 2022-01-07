; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_mchain.c_md_next_record.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_mchain.c_md_next_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdchain = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mbuf* }
%struct.mbuf = type { i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @md_next_record(%struct.mdchain* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mdchain*, align 8
  %4 = alloca %struct.mbuf*, align 8
  store %struct.mdchain* %0, %struct.mdchain** %3, align 8
  %5 = load %struct.mdchain*, %struct.mdchain** %3, align 8
  %6 = getelementptr inbounds %struct.mdchain, %struct.mdchain* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp eq %struct.TYPE_2__* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOENT, align 4
  store i32 %10, i32* %2, align 4
  br label %27

11:                                               ; preds = %1
  %12 = load %struct.mdchain*, %struct.mdchain** %3, align 8
  %13 = getelementptr inbounds %struct.mdchain, %struct.mdchain* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  store %struct.mbuf* %16, %struct.mbuf** %4, align 8
  %17 = load %struct.mdchain*, %struct.mdchain** %3, align 8
  %18 = call i32 @md_done(%struct.mdchain* %17)
  %19 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %20 = icmp eq %struct.mbuf* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %11
  %22 = load i32, i32* @ENOENT, align 4
  store i32 %22, i32* %2, align 4
  br label %27

23:                                               ; preds = %11
  %24 = load %struct.mdchain*, %struct.mdchain** %3, align 8
  %25 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %26 = call i32 @md_initm(%struct.mdchain* %24, %struct.mbuf* %25)
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %23, %21, %9
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @md_done(%struct.mdchain*) #1

declare dso_local i32 @md_initm(%struct.mdchain*, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
