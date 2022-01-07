; ModuleID = '/home/carl/AnghaBench/freebsd/sys/rpc/extr_getnetconfig.c_getnetconfig.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/rpc/extr_getnetconfig.c_getnetconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netconfig = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.netconfig* @getnetconfig(i8* %0) #0 {
  %2 = alloca %struct.netconfig*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.netconfig**, align 8
  %5 = alloca %struct.netconfig*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.netconfig**
  store %struct.netconfig** %7, %struct.netconfig*** %4, align 8
  %8 = load %struct.netconfig**, %struct.netconfig*** %4, align 8
  %9 = load %struct.netconfig*, %struct.netconfig** %8, align 8
  store %struct.netconfig* %9, %struct.netconfig** %5, align 8
  %10 = load %struct.netconfig*, %struct.netconfig** %5, align 8
  %11 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store %struct.netconfig* null, %struct.netconfig** %2, align 8
  br label %20

15:                                               ; preds = %1
  %16 = load %struct.netconfig**, %struct.netconfig*** %4, align 8
  %17 = load %struct.netconfig*, %struct.netconfig** %16, align 8
  %18 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %17, i32 1
  store %struct.netconfig* %18, %struct.netconfig** %16, align 8
  %19 = load %struct.netconfig*, %struct.netconfig** %5, align 8
  store %struct.netconfig* %19, %struct.netconfig** %2, align 8
  br label %20

20:                                               ; preds = %15, %14
  %21 = load %struct.netconfig*, %struct.netconfig** %2, align 8
  ret %struct.netconfig* %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
