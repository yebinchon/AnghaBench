; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/test/extr_ntb_tool.c_tool_mw_read_fn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/test/extr_ntb_tool.c_tool_mw_read_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysctl_req = type { i32 }
%struct.tool_mw = type { i8 }
%struct.sbuf = type { i32 }

@DEFAULT_MW_SIZE = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [3 x i8] c"mw\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"\0AConfigured MW size\09: %zu\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"peer_mw\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"\0AConfigured Peer MW size\09: %zu\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"R/W size\09\09: %zi\0AR/W Offset\09\09: %zi\0A\0AData\0A----->\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"\0A%08zx:\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"%02hhx\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"\0A\0ANOTE: Truncating read size %zi->1024 bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sysctl_req*, %struct.tool_mw*, i8*, i32*, i8, i8, i8*)* @tool_mw_read_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tool_mw_read_fn(%struct.sysctl_req* %0, %struct.tool_mw* %1, i8* %2, i32* %3, i8 signext %4, i8 signext %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sysctl_req*, align 8
  %10 = alloca %struct.tool_mw*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8*, align 8
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca %struct.sbuf*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  store %struct.sysctl_req* %0, %struct.sysctl_req** %9, align 8
  store %struct.tool_mw* %1, %struct.tool_mw** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32* %3, i32** %12, align 8
  store i8 %4, i8* %13, align 1
  store i8 %5, i8* %14, align 1
  store i8* %6, i8** %15, align 8
  %23 = load i32*, i32** %12, align 8
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %151

27:                                               ; preds = %7
  %28 = load i8, i8* %13, align 1
  store i8 %28, i8* %16, align 1
  %29 = load i8*, i8** %11, align 8
  store i8* %29, i8** %22, align 8
  %30 = load i8, i8* %16, align 1
  %31 = sext i8 %30 to i32
  %32 = load i8*, i8** %22, align 8
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  store i8* %34, i8** %22, align 8
  %35 = load i8, i8* %14, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %27
  %39 = load i8, i8* %14, align 1
  %40 = sext i8 %39 to i32
  %41 = load i8, i8* @DEFAULT_MW_SIZE, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp sgt i32 %40, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38, %27
  %45 = load i8, i8* @DEFAULT_MW_SIZE, align 1
  %46 = sext i8 %45 to i32
  br label %50

47:                                               ; preds = %38
  %48 = load i8, i8* %14, align 1
  %49 = sext i8 %48 to i32
  br label %50

50:                                               ; preds = %47, %44
  %51 = phi i32 [ %46, %44 ], [ %49, %47 ]
  store i32 %51, i32* %20, align 4
  %52 = load i32, i32* %20, align 4
  %53 = add nsw i32 %52, 256
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %17, align 1
  %55 = load i8, i8* %17, align 1
  %56 = load %struct.sysctl_req*, %struct.sysctl_req** %9, align 8
  %57 = call %struct.sbuf* @sbuf_new_for_sysctl(i32* null, i32* null, i8 signext %55, %struct.sysctl_req* %56)
  store %struct.sbuf* %57, %struct.sbuf** %18, align 8
  %58 = load %struct.sbuf*, %struct.sbuf** %18, align 8
  %59 = icmp eq %struct.sbuf* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %50
  %61 = load %struct.sbuf*, %struct.sbuf** %18, align 8
  %62 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %21, align 4
  %64 = load i32, i32* %21, align 4
  store i32 %64, i32* %8, align 4
  br label %151

65:                                               ; preds = %50
  %66 = load i8*, i8** %15, align 8
  %67 = call i32 @strcmp(i8* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %65
  %70 = load %struct.sbuf*, %struct.sbuf** %18, align 8
  %71 = load %struct.tool_mw*, %struct.tool_mw** %10, align 8
  %72 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %71, i32 0, i32 0
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  br label %88

76:                                               ; preds = %65
  %77 = load i8*, i8** %15, align 8
  %78 = call i32 @strcmp(i8* %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %76
  %81 = load %struct.sbuf*, %struct.sbuf** %18, align 8
  %82 = load %struct.tool_mw*, %struct.tool_mw** %10, align 8
  %83 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %82, i32 0, i32 0
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %81, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %80, %76
  br label %88

88:                                               ; preds = %87, %69
  %89 = load %struct.sbuf*, %struct.sbuf** %18, align 8
  %90 = load i8, i8* %14, align 1
  %91 = sext i8 %90 to i32
  %92 = load i8, i8* %13, align 1
  %93 = sext i8 %92 to i32
  %94 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %89, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %91, i32 %93)
  store i32 0, i32* %19, align 4
  br label %95

95:                                               ; preds = %128, %88
  %96 = load i32, i32* %19, align 4
  %97 = load i32, i32* %20, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %131

99:                                               ; preds = %95
  %100 = load i32, i32* %19, align 4
  %101 = srem i32 %100, 32
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %99
  %104 = load %struct.sbuf*, %struct.sbuf** %18, align 8
  %105 = load i8, i8* %16, align 1
  %106 = sext i8 %105 to i32
  %107 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %104, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %106)
  %108 = load i8, i8* %16, align 1
  %109 = sext i8 %108 to i32
  %110 = add nsw i32 %109, 32
  %111 = trunc i32 %110 to i8
  store i8 %111, i8* %16, align 1
  br label %112

112:                                              ; preds = %103, %99
  %113 = load i32, i32* %19, align 4
  %114 = srem i32 %113, 8
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %112
  %117 = load %struct.sbuf*, %struct.sbuf** %18, align 8
  %118 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %117, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %119

119:                                              ; preds = %116, %112
  %120 = load %struct.sbuf*, %struct.sbuf** %18, align 8
  %121 = load i8*, i8** %22, align 8
  %122 = load i32, i32* %19, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %120, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %119
  %129 = load i32, i32* %19, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %19, align 4
  br label %95

131:                                              ; preds = %95
  %132 = load i8, i8* %14, align 1
  %133 = sext i8 %132 to i32
  %134 = load i8, i8* @DEFAULT_MW_SIZE, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp sgt i32 %133, %135
  br i1 %136, label %137, label %142

137:                                              ; preds = %131
  %138 = load %struct.sbuf*, %struct.sbuf** %18, align 8
  %139 = load i8, i8* %14, align 1
  %140 = sext i8 %139 to i32
  %141 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %138, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0), i32 %140)
  br label %142

142:                                              ; preds = %137, %131
  %143 = load i32*, i32** %12, align 8
  %144 = load i32, i32* %143, align 4
  %145 = sub nsw i32 %144, 1
  store i32 %145, i32* %143, align 4
  %146 = load %struct.sbuf*, %struct.sbuf** %18, align 8
  %147 = call i32 @sbuf_finish(%struct.sbuf* %146)
  store i32 %147, i32* %21, align 4
  %148 = load %struct.sbuf*, %struct.sbuf** %18, align 8
  %149 = call i32 @sbuf_delete(%struct.sbuf* %148)
  %150 = load i32, i32* %21, align 4
  store i32 %150, i32* %8, align 4
  br label %151

151:                                              ; preds = %142, %60, %26
  %152 = load i32, i32* %8, align 4
  ret i32 %152
}

declare dso_local %struct.sbuf* @sbuf_new_for_sysctl(i32*, i32*, i8 signext, %struct.sysctl_req*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, ...) #1

declare dso_local i32 @sbuf_finish(%struct.sbuf*) #1

declare dso_local i32 @sbuf_delete(%struct.sbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
