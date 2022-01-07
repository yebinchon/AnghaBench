; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_frame_relay.c_ngfrm_newhook.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_frame_relay.c_ngfrm_newhook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_6__*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32*, i32 }

@NG_FRAMERELAY_HOOK_DEBUG = common dso_local global i32 0, align 4
@NG_FRAMERELAY_HOOK_DLCI = common dso_local global i32 0, align 4
@NG_FRAMERELAY_HOOK_DOWNSTREAM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4
@CHAN_ACTIVE = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @ngfrm_newhook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngfrm_newhook(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.TYPE_5__* @NG_NODE_PRIVATE(i32 %13)
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %8, align 8
  store i32 0, i32* %11, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = load i32, i32* @NG_FRAMERELAY_HOOK_DEBUG, align 4
  %17 = call i64 @strcmp(i8* %15, i32 %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @NG_HOOK_SET_PRIVATE(i8* %20, %struct.TYPE_6__* null)
  store i32 0, i32* %4, align 4
  br label %159

22:                                               ; preds = %3
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* @NG_FRAMERELAY_HOOK_DLCI, align 4
  %25 = load i32, i32* @NG_FRAMERELAY_HOOK_DLCI, align 4
  %26 = call i32 @strlen(i32 %25)
  %27 = call i64 @strncmp(i8* %23, i32 %24, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %67

29:                                               ; preds = %22
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* @NG_FRAMERELAY_HOOK_DOWNSTREAM, align 4
  %32 = call i64 @strcmp(i8* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %4, align 4
  br label %159

36:                                               ; preds = %29
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @EADDRINUSE, align 4
  store i32 %43, i32* %4, align 4
  br label %159

44:                                               ; preds = %36
  %45 = load i8*, i8** %6, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  %48 = call i32 @NG_HOOK_SET_PRIVATE(i8* %45, %struct.TYPE_6__* %47)
  %49 = load i8*, i8** %6, align 8
  %50 = bitcast i8* %49 to i32*
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  store i32* %50, i32** %53, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i32 -1, i32* %56, align 8
  %57 = load i32, i32* @CHAN_ACTIVE, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %57
  store i32 %62, i32* %60, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 8
  store i32 0, i32* %4, align 4
  br label %159

67:                                               ; preds = %22
  %68 = load i8*, i8** %7, align 8
  %69 = load i32, i32* @NG_FRAMERELAY_HOOK_DLCI, align 4
  %70 = call i32 @strlen(i32 %69)
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %68, i64 %71
  store i8* %72, i8** %9, align 8
  %73 = load i8*, i8** %9, align 8
  %74 = load i8, i8* %73, align 1
  %75 = call i32 @isdigit(i8 signext %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %67
  %78 = load i8*, i8** %9, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 0
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 48
  br i1 %82, label %83, label %91

83:                                               ; preds = %77
  %84 = load i8*, i8** %9, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %83, %67
  %90 = load i32, i32* @EINVAL, align 4
  store i32 %90, i32* %4, align 4
  br label %159

91:                                               ; preds = %83, %77
  %92 = load i8*, i8** %9, align 8
  %93 = call i64 @strtoul(i8* %92, i8** %10, i32 10)
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %11, align 4
  %95 = load i8*, i8** %10, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %91
  %100 = load i32, i32* %11, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = load i32, i32* %11, align 4
  %104 = icmp sgt i32 %103, 1023
  br i1 %104, label %105, label %107

105:                                              ; preds = %102, %99, %91
  %106 = load i32, i32* @EINVAL, align 4
  store i32 %106, i32* %4, align 4
  br label %159

107:                                              ; preds = %102
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @ngfrm_allocate_CTX(%struct.TYPE_5__* %108, i32 %109)
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %12, align 4
  %112 = icmp eq i32 %111, -1
  br i1 %112, label %113, label %115

113:                                              ; preds = %107
  %114 = load i32, i32* @ENOBUFS, align 4
  store i32 %114, i32* %4, align 4
  br label %159

115:                                              ; preds = %107
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = load i32, i32* %12, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %127

125:                                              ; preds = %115
  %126 = load i32, i32* @EADDRINUSE, align 4
  store i32 %126, i32* %4, align 4
  br label %159

127:                                              ; preds = %115
  %128 = load i32, i32* @CHAN_ACTIVE, align 4
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = load i32, i32* %12, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = or i32 %136, %128
  store i32 %137, i32* %135, align 8
  %138 = load i8*, i8** %6, align 8
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = load i32, i32* %12, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i64 %143
  %145 = call i32 @NG_HOOK_SET_PRIVATE(i8* %138, %struct.TYPE_6__* %144)
  %146 = load i8*, i8** %6, align 8
  %147 = bitcast i8* %146 to i32*
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = load i32, i32* %12, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 1
  store i32* %147, i32** %154, align 8
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %156, align 8
  store i32 0, i32* %4, align 4
  br label %159

159:                                              ; preds = %127, %125, %113, %105, %89, %44, %42, %34, %19
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local %struct.TYPE_5__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @NG_HOOK_SET_PRIVATE(i8*, %struct.TYPE_6__*) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @ngfrm_allocate_CTX(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
