; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_bridge.c_ng_bridge_newhook.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_bridge.c_ng_bridge_newhook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@NG_BRIDGE_HOOK_LINK_PREFIX = common dso_local global i8* null, align 8
@NG_HOOKSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%u\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ELOOP = common dso_local global i32 0, align 4
@M_NETGRAPH_BRIDGE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i8*)* @ng_bridge_newhook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_bridge_newhook(i64 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call %struct.TYPE_6__* @NG_NODE_PRIVATE(i64 %14)
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %8, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = load i8*, i8** @NG_BRIDGE_HOOK_LINK_PREFIX, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = icmp sgt i32 %17, %19
  br i1 %20, label %21, label %71

21:                                               ; preds = %3
  %22 = load i32, i32* @NG_HOOKSIZ, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %9, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %10, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i8*, i8** @NG_BRIDGE_HOOK_LINK_PREFIX, align 8
  %28 = call i32 @strlen(i8* %27)
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %26, i64 %29
  %31 = call i32 @strtoul(i8* %30, i32* null, i32 10)
  store i32 %31, i32* %11, align 4
  %32 = trunc i64 %23 to i32
  %33 = load i8*, i8** @NG_BRIDGE_HOOK_LINK_PREFIX, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @snprintf(i8* %25, i32 %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %33, i32 %34)
  %36 = load i8*, i8** %7, align 8
  %37 = call i64 @strcmp(i8* %25, i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %21
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %69

41:                                               ; preds = %21
  %42 = load i32, i32* %6, align 4
  %43 = call i64 @NG_PEER_NODE(i32 %42)
  %44 = load i64, i64* %5, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @ELOOP, align 4
  store i32 %47, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %69

48:                                               ; preds = %41
  %49 = load i32, i32* @M_NETGRAPH_BRIDGE, align 4
  %50 = load i32, i32* @M_WAITOK, align 4
  %51 = load i32, i32* @M_ZERO, align 4
  %52 = or i32 %50, %51
  %53 = call %struct.TYPE_7__* @malloc(i32 4, i32 %49, i32 %52)
  store %struct.TYPE_7__* %53, %struct.TYPE_7__** %12, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %55 = icmp eq %struct.TYPE_7__* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* @ENOMEM, align 4
  store i32 %57, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %69

58:                                               ; preds = %48
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %64 = call i32 @NG_HOOK_SET_PRIVATE(i32 %62, %struct.TYPE_7__* %63)
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %69

69:                                               ; preds = %58, %56, %46, %39
  %70 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %70)
  br label %73

71:                                               ; preds = %3
  %72 = load i32, i32* @EINVAL, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local %struct.TYPE_6__* @NG_NODE_PRIVATE(i64) #1

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @NG_PEER_NODE(i32) #1

declare dso_local %struct.TYPE_7__* @malloc(i32, i32, i32) #1

declare dso_local i32 @NG_HOOK_SET_PRIVATE(i32, %struct.TYPE_7__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
