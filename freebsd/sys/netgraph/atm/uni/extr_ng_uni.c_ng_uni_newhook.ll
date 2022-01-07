; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/atm/uni/extr_ng_uni.c_ng_uni_newhook.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/atm/uni/extr_ng_uni.c_ng_uni_newhook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.priv = type { i8*, i8* }

@.str = private unnamed_addr constant [6 x i8] c"lower\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"upper\00", align 1
@ng_uni_rcvupper = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @ng_uni_newhook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_uni_newhook(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.priv*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.priv* @NG_NODE_PRIVATE(i32 %9)
  store %struct.priv* %10, %struct.priv** %8, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i64 @strcmp(i8* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = load %struct.priv*, %struct.priv** %8, align 8
  %17 = getelementptr inbounds %struct.priv, %struct.priv* %16, i32 0, i32 1
  store i8* %15, i8** %17, align 8
  br label %32

18:                                               ; preds = %3
  %19 = load i8*, i8** %7, align 8
  %20 = call i64 @strcmp(i8* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.priv*, %struct.priv** %8, align 8
  %25 = getelementptr inbounds %struct.priv, %struct.priv* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* @ng_uni_rcvupper, align 4
  %28 = call i32 @NG_HOOK_SET_RCVDATA(i8* %26, i32 %27)
  br label %31

29:                                               ; preds = %18
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %4, align 4
  br label %33

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31, %14
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %29
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.priv* @NG_NODE_PRIVATE(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @NG_HOOK_SET_RCVDATA(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
