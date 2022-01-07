; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_lmi.c_nglmi_newhook.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_lmi.c_nglmi_newhook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8* }

@NG_LMI_HOOK_DEBUG = common dso_local global i32 0, align 4
@SCF_CONNECTED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NG_LMI_HOOK_ANNEXA = common dso_local global i32 0, align 4
@SCF_ANNEX_A = common dso_local global i32 0, align 4
@NAME_ANNEXA = common dso_local global i8* null, align 8
@NG_LMI_HOOK_ANNEXD = common dso_local global i32 0, align 4
@SCF_ANNEX_D = common dso_local global i32 0, align 4
@NAME_ANNEXD = common dso_local global i8* null, align 8
@NG_LMI_HOOK_GROUPOF4 = common dso_local global i32 0, align 4
@SCF_GROUP4 = common dso_local global i32 0, align 4
@NAME_GROUP4 = common dso_local global i8* null, align 8
@NG_LMI_HOOK_AUTO0 = common dso_local global i32 0, align 4
@NAME_NONE = common dso_local global i8* null, align 8
@NG_LMI_HOOK_AUTO1023 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @nglmi_newhook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nglmi_newhook(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.TYPE_7__* @NG_NODE_PRIVATE(i32 %9)
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %8, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i32, i32* @NG_LMI_HOOK_DEBUG, align 4
  %13 = call i64 @strcmp(i8* %11, i32 %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @NG_HOOK_SET_PRIVATE(i8* %16, %struct.TYPE_7__* null)
  store i32 0, i32* %4, align 4
  br label %154

18:                                               ; preds = %3
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SCF_CONNECTED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %4, align 4
  br label %154

27:                                               ; preds = %18
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* @NG_LMI_HOOK_ANNEXA, align 4
  %30 = call i64 @strcmp(i8* %28, i32 %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %27
  %33 = load i8*, i8** %6, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 7
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call %struct.TYPE_7__* @NG_NODE_PRIVATE(i32 %37)
  %39 = call i32 @NG_HOOK_SET_PRIVATE(i8* %36, %struct.TYPE_7__* %38)
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  store i32 8, i32* %41, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %43 = load i32, i32* @SCF_ANNEX_A, align 4
  %44 = call i32 @SETLMITYPE(%struct.TYPE_7__* %42, i32 %43)
  %45 = load i8*, i8** @NAME_ANNEXA, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 3
  store i8* %45, i8** %47, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @nglmi_startup_fixed(%struct.TYPE_7__* %48, i8* %49)
  br label %153

51:                                               ; preds = %27
  %52 = load i8*, i8** %7, align 8
  %53 = load i32, i32* @NG_LMI_HOOK_ANNEXD, align 4
  %54 = call i64 @strcmp(i8* %52, i32 %53)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %75

56:                                               ; preds = %51
  %57 = load i8*, i8** %6, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 6
  store i8* %57, i8** %59, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call %struct.TYPE_7__* @NG_NODE_PRIVATE(i32 %61)
  %63 = call i32 @NG_HOOK_SET_PRIVATE(i8* %60, %struct.TYPE_7__* %62)
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  store i32 8, i32* %65, align 4
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %67 = load i32, i32* @SCF_ANNEX_D, align 4
  %68 = call i32 @SETLMITYPE(%struct.TYPE_7__* %66, i32 %67)
  %69 = load i8*, i8** @NAME_ANNEXD, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 3
  store i8* %69, i8** %71, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @nglmi_startup_fixed(%struct.TYPE_7__* %72, i8* %73)
  br label %152

75:                                               ; preds = %51
  %76 = load i8*, i8** %7, align 8
  %77 = load i32, i32* @NG_LMI_HOOK_GROUPOF4, align 4
  %78 = call i64 @strcmp(i8* %76, i32 %77)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %99

80:                                               ; preds = %75
  %81 = load i8*, i8** %6, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 5
  store i8* %81, i8** %83, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = load i32, i32* %5, align 4
  %86 = call %struct.TYPE_7__* @NG_NODE_PRIVATE(i32 %85)
  %87 = call i32 @NG_HOOK_SET_PRIVATE(i8* %84, %struct.TYPE_7__* %86)
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  store i32 9, i32* %89, align 4
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %91 = load i32, i32* @SCF_GROUP4, align 4
  %92 = call i32 @SETLMITYPE(%struct.TYPE_7__* %90, i32 %91)
  %93 = load i8*, i8** @NAME_GROUP4, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 3
  store i8* %93, i8** %95, align 8
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %97 = load i8*, i8** %6, align 8
  %98 = call i32 @nglmi_startup_fixed(%struct.TYPE_7__* %96, i8* %97)
  br label %151

99:                                               ; preds = %75
  %100 = load i8*, i8** %7, align 8
  %101 = load i32, i32* @NG_LMI_HOOK_AUTO0, align 4
  %102 = call i64 @strcmp(i8* %100, i32 %101)
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %123

104:                                              ; preds = %99
  %105 = load i8*, i8** %6, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 2
  store i8* %105, i8** %107, align 8
  %108 = load i8*, i8** @NAME_NONE, align 8
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 3
  store i8* %108, i8** %110, align 8
  %111 = load i8*, i8** %6, align 8
  %112 = load i32, i32* %5, align 4
  %113 = call %struct.TYPE_7__* @NG_NODE_PRIVATE(i32 %112)
  %114 = call i32 @NG_HOOK_SET_PRIVATE(i8* %111, %struct.TYPE_7__* %113)
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 4
  %117 = load i8*, i8** %116, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %104
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %121 = call i32 @nglmi_startup_auto(%struct.TYPE_7__* %120)
  br label %122

122:                                              ; preds = %119, %104
  br label %150

123:                                              ; preds = %99
  %124 = load i8*, i8** %7, align 8
  %125 = load i32, i32* @NG_LMI_HOOK_AUTO1023, align 4
  %126 = call i64 @strcmp(i8* %124, i32 %125)
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %147

128:                                              ; preds = %123
  %129 = load i8*, i8** %6, align 8
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 4
  store i8* %129, i8** %131, align 8
  %132 = load i8*, i8** @NAME_NONE, align 8
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 3
  store i8* %132, i8** %134, align 8
  %135 = load i8*, i8** %6, align 8
  %136 = load i32, i32* %5, align 4
  %137 = call %struct.TYPE_7__* @NG_NODE_PRIVATE(i32 %136)
  %138 = call i32 @NG_HOOK_SET_PRIVATE(i8* %135, %struct.TYPE_7__* %137)
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 2
  %141 = load i8*, i8** %140, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %146

143:                                              ; preds = %128
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %145 = call i32 @nglmi_startup_auto(%struct.TYPE_7__* %144)
  br label %146

146:                                              ; preds = %143, %128
  br label %149

147:                                              ; preds = %123
  %148 = load i32, i32* @EINVAL, align 4
  store i32 %148, i32* %4, align 4
  br label %154

149:                                              ; preds = %146
  br label %150

150:                                              ; preds = %149, %122
  br label %151

151:                                              ; preds = %150, %80
  br label %152

152:                                              ; preds = %151, %56
  br label %153

153:                                              ; preds = %152, %32
  store i32 0, i32* %4, align 4
  br label %154

154:                                              ; preds = %153, %147, %25, %15
  %155 = load i32, i32* %4, align 4
  ret i32 %155
}

declare dso_local %struct.TYPE_7__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @NG_HOOK_SET_PRIVATE(i8*, %struct.TYPE_7__*) #1

declare dso_local i32 @SETLMITYPE(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @nglmi_startup_fixed(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @nglmi_startup_auto(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
