; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_rfc1490.c_ng_rfc1490_newhook.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_rfc1490.c_ng_rfc1490_newhook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8*, i8* }

@NG_RFC1490_HOOK_DOWNSTREAM = common dso_local global i32 0, align 4
@EISCONN = common dso_local global i32 0, align 4
@NG_RFC1490_HOOK_PPP = common dso_local global i32 0, align 4
@NG_RFC1490_HOOK_INET = common dso_local global i32 0, align 4
@NG_RFC1490_HOOK_ETHERNET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @ng_rfc1490_newhook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_rfc1490_newhook(i32 %0, i8* %1, i8* %2) #0 {
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
  %12 = load i32, i32* @NG_RFC1490_HOOK_DOWNSTREAM, align 4
  %13 = call i32 @strcmp(i8* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %3
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @EISCONN, align 4
  store i32 %21, i32* %4, align 4
  br label %80

22:                                               ; preds = %15
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  store i8* %23, i8** %25, align 8
  br label %79

26:                                               ; preds = %3
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* @NG_RFC1490_HOOK_PPP, align 4
  %29 = call i32 @strcmp(i8* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %26
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @EISCONN, align 4
  store i32 %37, i32* %4, align 4
  br label %80

38:                                               ; preds = %31
  %39 = load i8*, i8** %6, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  br label %78

42:                                               ; preds = %26
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* @NG_RFC1490_HOOK_INET, align 4
  %45 = call i32 @strcmp(i8* %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %42
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @EISCONN, align 4
  store i32 %53, i32* %4, align 4
  br label %80

54:                                               ; preds = %47
  %55 = load i8*, i8** %6, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  br label %77

58:                                               ; preds = %42
  %59 = load i8*, i8** %7, align 8
  %60 = load i32, i32* @NG_RFC1490_HOOK_ETHERNET, align 4
  %61 = call i32 @strcmp(i8* %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %74, label %63

63:                                               ; preds = %58
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* @EISCONN, align 4
  store i32 %69, i32* %4, align 4
  br label %80

70:                                               ; preds = %63
  %71 = load i8*, i8** %6, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  br label %76

74:                                               ; preds = %58
  %75 = load i32, i32* @EINVAL, align 4
  store i32 %75, i32* %4, align 4
  br label %80

76:                                               ; preds = %70
  br label %77

77:                                               ; preds = %76, %54
  br label %78

78:                                               ; preds = %77, %38
  br label %79

79:                                               ; preds = %78, %22
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %74, %68, %52, %36, %20
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.TYPE_3__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
