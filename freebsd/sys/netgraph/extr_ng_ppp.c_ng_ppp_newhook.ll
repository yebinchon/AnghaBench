; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_ppp.c_ng_ppp_newhook.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_ppp.c_ng_ppp_newhook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32* }
%struct.TYPE_10__ = type { i32, i32**, %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32* }
%struct.TYPE_7__ = type { i64 }

@NG_PPP_HOOK_LINK_PREFIX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NG_PPP_MAX_LINKS = common dso_local global i32 0, align 4
@EISCONN = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ng_ppp_hook_names = common dso_local global %struct.TYPE_11__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*)* @ng_ppp_newhook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_ppp_newhook(i32 %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.TYPE_10__* @NG_NODE_PRIVATE(i32 %15)
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %8, align 8
  store i32** null, i32*** %9, align 8
  store i32 -1, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = load i32, i32* @NG_PPP_HOOK_LINK_PREFIX, align 4
  %19 = load i32, i32* @NG_PPP_HOOK_LINK_PREFIX, align 4
  %20 = call i32 @strlen(i32 %19)
  %21 = call i64 @strncmp(i8* %17, i32 %18, i32 %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %104

23:                                               ; preds = %3
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* @NG_PPP_HOOK_LINK_PREFIX, align 4
  %26 = call i32 @strlen(i32 %25)
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %24, i64 %27
  store i8* %28, i8** %12, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = load i8, i8* %29, align 1
  %31 = call i32 @isdigit(i8 signext %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %23
  %34 = load i8*, i8** %12, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 48
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load i8*, i8** %12, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39, %23
  %46 = load i32, i32* @EINVAL, align 4
  store i32 %46, i32* %4, align 4
  br label %170

47:                                               ; preds = %39, %33
  %48 = load i8*, i8** %12, align 8
  %49 = call i64 @strtoul(i8* %48, i8** %13, i32 10)
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %10, align 4
  %51 = load i8*, i8** %13, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %47
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @NG_PPP_MAX_LINKS, align 4
  %61 = icmp sge i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58, %55, %47
  %63 = load i32, i32* @EINVAL, align 4
  store i32 %63, i32* %4, align 4
  br label %170

64:                                               ; preds = %58
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 3
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  store i32** %71, i32*** %9, align 8
  %72 = load i32, i32* %10, align 4
  %73 = xor i32 %72, -1
  store i32 %73, i32* %11, align 4
  %74 = load i32**, i32*** %9, align 8
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %64
  %78 = load i32, i32* @EISCONN, align 4
  store i32 %78, i32* %4, align 4
  br label %170

79:                                               ; preds = %64
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 3
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %79
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %103, label %96

96:                                               ; preds = %90
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp sge i32 %99, 1
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = load i32, i32* @ENODEV, align 4
  store i32 %102, i32* %4, align 4
  br label %170

103:                                              ; preds = %96, %90, %79
  br label %160

104:                                              ; preds = %3
  store i32 0, i32* %14, align 4
  br label %105

105:                                              ; preds = %132, %104
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ng_ppp_hook_names, align 8
  %107 = load i32, i32* %14, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %135

113:                                              ; preds = %105
  %114 = load i8*, i8** %7, align 8
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ng_ppp_hook_names, align 8
  %116 = load i32, i32* %14, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = call i64 @strcmp(i8* %114, i32* %120)
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %113
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 1
  %126 = load i32**, i32*** %125, align 8
  %127 = load i32, i32* %14, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32*, i32** %126, i64 %128
  store i32** %129, i32*** %9, align 8
  %130 = load i32, i32* %14, align 4
  store i32 %130, i32* %11, align 4
  br label %135

131:                                              ; preds = %113
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %14, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %14, align 4
  br label %105

135:                                              ; preds = %123, %105
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ng_ppp_hook_names, align 8
  %137 = load i32, i32* %14, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = icmp eq i32* %141, null
  br i1 %142, label %143, label %145

143:                                              ; preds = %135
  %144 = load i32, i32* @EINVAL, align 4
  store i32 %144, i32* %4, align 4
  br label %170

145:                                              ; preds = %135
  %146 = load i32**, i32*** %9, align 8
  %147 = load i32*, i32** %146, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %149, label %151

149:                                              ; preds = %145
  %150 = load i32, i32* @EISCONN, align 4
  store i32 %150, i32* %4, align 4
  br label %170

151:                                              ; preds = %145
  %152 = load i32*, i32** %6, align 8
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ng_ppp_hook_names, align 8
  %154 = load i32, i32* %14, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @NG_HOOK_SET_RCVDATA(i32* %152, i32 %158)
  br label %160

160:                                              ; preds = %151, %103
  %161 = load i32*, i32** %6, align 8
  %162 = load i32**, i32*** %9, align 8
  store i32* %161, i32** %162, align 8
  %163 = load i32*, i32** %6, align 8
  %164 = load i32, i32* %11, align 4
  %165 = sext i32 %164 to i64
  %166 = inttoptr i64 %165 to i8*
  %167 = call i32 @NG_HOOK_SET_PRIVATE(i32* %163, i8* %166)
  %168 = load i32, i32* %5, align 4
  %169 = call i32 @ng_ppp_update(i32 %168, i32 0)
  store i32 0, i32* %4, align 4
  br label %170

170:                                              ; preds = %160, %149, %143, %101, %77, %62, %45
  %171 = load i32, i32* %4, align 4
  ret i32 %171
}

declare dso_local %struct.TYPE_10__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i64 @strcmp(i8*, i32*) #1

declare dso_local i32 @NG_HOOK_SET_RCVDATA(i32*, i32) #1

declare dso_local i32 @NG_HOOK_SET_PRIVATE(i32*, i8*) #1

declare dso_local i32 @ng_ppp_update(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
