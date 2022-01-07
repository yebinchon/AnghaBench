; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/atm/sscop/extr_ng_sscop.c_ng_sscop_newhook.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/atm/sscop/extr_ng_sscop.c_ng_sscop_newhook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.priv = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [6 x i8] c"upper\00", align 1
@ng_sscop_rcvupper = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"lower\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"manage\00", align 1
@ng_sscop_rcvmanage = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @ng_sscop_newhook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_sscop_newhook(i32 %0, i8* %1, i8* %2) #0 {
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
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = load %struct.priv*, %struct.priv** %8, align 8
  %17 = getelementptr inbounds %struct.priv, %struct.priv* %16, i32 0, i32 2
  store i8* %15, i8** %17, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* @ng_sscop_rcvupper, align 4
  %20 = call i32 @NG_HOOK_SET_RCVDATA(i8* %18, i32 %19)
  br label %44

21:                                               ; preds = %3
  %22 = load i8*, i8** %7, align 8
  %23 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i8*, i8** %6, align 8
  %27 = load %struct.priv*, %struct.priv** %8, align 8
  %28 = getelementptr inbounds %struct.priv, %struct.priv* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  br label %43

29:                                               ; preds = %21
  %30 = load i8*, i8** %7, align 8
  %31 = call i64 @strcmp(i8* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load i8*, i8** %6, align 8
  %35 = load %struct.priv*, %struct.priv** %8, align 8
  %36 = getelementptr inbounds %struct.priv, %struct.priv* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* @ng_sscop_rcvmanage, align 4
  %39 = call i32 @NG_HOOK_SET_RCVDATA(i8* %37, i32 %38)
  br label %42

40:                                               ; preds = %29
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* %4, align 4
  br label %45

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42, %25
  br label %44

44:                                               ; preds = %43, %14
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %40
  %46 = load i32, i32* %4, align 4
  ret i32 %46
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
