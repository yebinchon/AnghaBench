; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_iflib_add_pfil.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_iflib_add_pfil.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { %struct.pfil_head* }
%struct.pfil_head = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.pfil_head_args = type { i32, i32, i32, i32 }

@PFIL_VERSION = common dso_local global i32 0, align 4
@PFIL_IN = common dso_local global i32 0, align 4
@PFIL_TYPE_ETHERNET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @iflib_add_pfil to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iflib_add_pfil(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.pfil_head*, align 8
  %4 = alloca %struct.pfil_head_args, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %7 = load i32, i32* @PFIL_VERSION, align 4
  %8 = getelementptr inbounds %struct.pfil_head_args, %struct.pfil_head_args* %4, i32 0, i32 3
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* @PFIL_IN, align 4
  %10 = getelementptr inbounds %struct.pfil_head_args, %struct.pfil_head_args* %4, i32 0, i32 2
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* @PFIL_TYPE_ETHERNET, align 4
  %12 = getelementptr inbounds %struct.pfil_head_args, %struct.pfil_head_args* %4, i32 0, i32 1
  store i32 %11, i32* %12, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.pfil_head_args, %struct.pfil_head_args* %4, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = call %struct.pfil_head* @pfil_head_register(%struct.pfil_head_args* %4)
  store %struct.pfil_head* %19, %struct.pfil_head** %3, align 8
  store i32 0, i32* %6, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %5, align 8
  br label %23

23:                                               ; preds = %32, %1
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %26 = call i32 @NRXQSETS(%struct.TYPE_8__* %25)
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load %struct.pfil_head*, %struct.pfil_head** %3, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store %struct.pfil_head* %29, %struct.pfil_head** %31, align 8
  br label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 1
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %5, align 8
  br label %23

37:                                               ; preds = %23
  ret void
}

declare dso_local %struct.pfil_head* @pfil_head_register(%struct.pfil_head_args*) #1

declare dso_local i32 @NRXQSETS(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
