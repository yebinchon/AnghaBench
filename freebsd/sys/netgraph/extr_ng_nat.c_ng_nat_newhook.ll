; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_nat.c_ng_nat_newhook.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_nat.c_ng_nat_newhook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32* }

@NG_NAT_HOOK_IN = common dso_local global i32 0, align 4
@NG_NAT_HOOK_OUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NGNAT_CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @ng_nat_newhook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_nat_newhook(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.TYPE_3__* @NG_NODE_PRIVATE(i32 %9)
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %8, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i32, i32* @NG_NAT_HOOK_IN, align 4
  %13 = call i64 @strcmp(i8* %11, i32 %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to i32*
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  store i32* %17, i32** %19, align 8
  br label %33

20:                                               ; preds = %3
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* @NG_NAT_HOOK_OUT, align 4
  %23 = call i64 @strcmp(i8* %21, i32 %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i8*, i8** %6, align 8
  %27 = bitcast i8* %26 to i32*
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  store i32* %27, i32** %29, align 8
  br label %32

30:                                               ; preds = %20
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %4, align 4
  br label %50

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %15
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %49

38:                                               ; preds = %33
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i32, i32* @NGNAT_CONNECTED, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %43, %38, %33
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %30
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.TYPE_3__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
