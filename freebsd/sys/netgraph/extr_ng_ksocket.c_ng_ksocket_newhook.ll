; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_ksocket.c_ng_ksocket_newhook.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_ksocket.c_ng_ksocket_newhook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.TYPE_4__ = type { i32, i32*, i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@NG_HOOKSIZ = common dso_local global i32 0, align 4
@EISCONN = common dso_local global i32 0, align 4
@KSF_CLONED = common dso_local global i32 0, align 4
@KSF_EMBRYONIC = common dso_local global i32 0, align 4
@siblings = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ng_ksocket_families = common dso_local global i32 0, align 4
@ng_ksocket_types = common dso_local global i32 0, align 4
@ng_ksocket_protos = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*)* @ng_ksocket_newhook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_ksocket_newhook(i32 %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %19 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %19, %struct.thread** %8, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call %struct.TYPE_4__* @NG_NODE_PRIVATE(i32 %20)
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %9, align 8
  %22 = load i32, i32* @NG_HOOKSIZ, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %12, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %13, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* @EISCONN, align 4
  store i32 %31, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %125

32:                                               ; preds = %3
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @KSF_CLONED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %32
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @KSF_EMBRYONIC, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %39
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %48 = load i32, i32* @siblings, align 4
  %49 = call i32 @LIST_REMOVE(%struct.TYPE_4__* %47, i32 %48)
  %50 = load i32, i32* @KSF_EMBRYONIC, align 4
  %51 = xor i32 %50, -1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %46, %39
  br label %119

57:                                               ; preds = %32
  %58 = trunc i64 %23 to i32
  %59 = load i8*, i8** %7, align 8
  %60 = call i32 @snprintf(i8* %25, i32 %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %59)
  store i8* %25, i8** %10, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = call i8* @strchr(i8* %61, i8 signext 47)
  store i8* %62, i8** %11, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* @EINVAL, align 4
  store i32 %65, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %125

66:                                               ; preds = %57
  %67 = load i8*, i8** %11, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %11, align 8
  store i8 0, i8* %67, align 1
  %69 = load i32, i32* @ng_ksocket_families, align 4
  %70 = load i8*, i8** %10, align 8
  %71 = call i32 @ng_ksocket_parse(i32 %69, i8* %70, i32 0)
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = load i32, i32* @EINVAL, align 4
  store i32 %75, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %125

76:                                               ; preds = %66
  %77 = load i8*, i8** %11, align 8
  store i8* %77, i8** %10, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = call i8* @strchr(i8* %78, i8 signext 47)
  store i8* %79, i8** %11, align 8
  %80 = icmp eq i8* %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i32, i32* @EINVAL, align 4
  store i32 %82, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %125

83:                                               ; preds = %76
  %84 = load i8*, i8** %11, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %11, align 8
  store i8 0, i8* %84, align 1
  %86 = load i32, i32* @ng_ksocket_types, align 4
  %87 = load i8*, i8** %10, align 8
  %88 = call i32 @ng_ksocket_parse(i32 %86, i8* %87, i32 0)
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %15, align 4
  %90 = icmp eq i32 %89, -1
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  %92 = load i32, i32* @EINVAL, align 4
  store i32 %92, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %125

93:                                               ; preds = %83
  %94 = load i8*, i8** %11, align 8
  store i8* %94, i8** %10, align 8
  %95 = load i32, i32* @ng_ksocket_protos, align 4
  %96 = load i8*, i8** %10, align 8
  %97 = load i32, i32* %14, align 4
  %98 = call i32 @ng_ksocket_parse(i32 %95, i8* %96, i32 %97)
  store i32 %98, i32* %16, align 4
  %99 = load i32, i32* %16, align 4
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %101, label %103

101:                                              ; preds = %93
  %102 = load i32, i32* @EINVAL, align 4
  store i32 %102, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %125

103:                                              ; preds = %93
  %104 = load i32, i32* %14, align 4
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* %16, align 4
  %109 = load %struct.thread*, %struct.thread** %8, align 8
  %110 = getelementptr inbounds %struct.thread, %struct.thread* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.thread*, %struct.thread** %8, align 8
  %113 = call i32 @socreate(i32 %104, i32* %106, i32 %107, i32 %108, i32 %111, %struct.thread* %112)
  store i32 %113, i32* %17, align 4
  %114 = load i32, i32* %17, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %103
  %117 = load i32, i32* %17, align 4
  store i32 %117, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %125

118:                                              ; preds = %103
  br label %119

119:                                              ; preds = %118, %56
  %120 = load i32*, i32** %6, align 8
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  store i32* %120, i32** %122, align 8
  %123 = load i32*, i32** %6, align 8
  %124 = call i32 @NG_HOOK_FORCE_QUEUE(i32* %123)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %125

125:                                              ; preds = %119, %116, %101, %91, %81, %74, %64, %30
  %126 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %126)
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local %struct.TYPE_4__* @NG_NODE_PRIVATE(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @LIST_REMOVE(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @ng_ksocket_parse(i32, i8*, i32) #1

declare dso_local i32 @socreate(i32, i32*, i32, i32, i32, %struct.thread*) #1

declare dso_local i32 @NG_HOOK_FORCE_QUEUE(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
