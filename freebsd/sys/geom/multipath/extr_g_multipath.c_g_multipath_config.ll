; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/multipath/extr_g_multipath.c_g_multipath_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/multipath/extr_g_multipath.c_g_multipath_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_class = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"No 'version' argument\00", align 1
@G_MULTIPATH_VERSION = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"Userland and kernel parts are out of sync\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"prefer\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"create\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"configure\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"fail\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"restore\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"rotate\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"getactive\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"Unknown verb %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*, %struct.g_class*, i8*)* @g_multipath_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_multipath_config(%struct.gctl_req* %0, %struct.g_class* %1, i8* %2) #0 {
  %4 = alloca %struct.gctl_req*, align 8
  %5 = alloca %struct.g_class*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  store %struct.gctl_req* %0, %struct.gctl_req** %4, align 8
  store %struct.g_class* %1, %struct.g_class** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = call i32 (...) @g_topology_assert()
  %9 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %10 = call i64* @gctl_get_paraml(%struct.gctl_req* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 8)
  store i64* %10, i64** %7, align 8
  %11 = load i64*, i64** %7, align 8
  %12 = icmp eq i64* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %15 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %128

16:                                               ; preds = %3
  %17 = load i64*, i64** %7, align 8
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @G_MULTIPATH_VERSION, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %23 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %22, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %127

24:                                               ; preds = %16
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %30 = load %struct.g_class*, %struct.g_class** %5, align 8
  %31 = call i32 @g_multipath_ctl_add(%struct.gctl_req* %29, %struct.g_class* %30)
  br label %126

32:                                               ; preds = %24
  %33 = load i8*, i8** %6, align 8
  %34 = call i64 @strcmp(i8* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %38 = load %struct.g_class*, %struct.g_class** %5, align 8
  %39 = call i32 @g_multipath_ctl_prefer(%struct.gctl_req* %37, %struct.g_class* %38)
  br label %125

40:                                               ; preds = %32
  %41 = load i8*, i8** %6, align 8
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %46 = load %struct.g_class*, %struct.g_class** %5, align 8
  %47 = call i32 @g_multipath_ctl_create(%struct.gctl_req* %45, %struct.g_class* %46)
  br label %124

48:                                               ; preds = %40
  %49 = load i8*, i8** %6, align 8
  %50 = call i64 @strcmp(i8* %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %54 = load %struct.g_class*, %struct.g_class** %5, align 8
  %55 = call i32 @g_multipath_ctl_configure(%struct.gctl_req* %53, %struct.g_class* %54)
  br label %123

56:                                               ; preds = %48
  %57 = load i8*, i8** %6, align 8
  %58 = call i64 @strcmp(i8* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %62 = load %struct.g_class*, %struct.g_class** %5, align 8
  %63 = call i32 @g_multipath_ctl_stop(%struct.gctl_req* %61, %struct.g_class* %62)
  br label %122

64:                                               ; preds = %56
  %65 = load i8*, i8** %6, align 8
  %66 = call i64 @strcmp(i8* %65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %70 = load %struct.g_class*, %struct.g_class** %5, align 8
  %71 = call i32 @g_multipath_ctl_destroy(%struct.gctl_req* %69, %struct.g_class* %70)
  br label %121

72:                                               ; preds = %64
  %73 = load i8*, i8** %6, align 8
  %74 = call i64 @strcmp(i8* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %78 = load %struct.g_class*, %struct.g_class** %5, align 8
  %79 = call i32 @g_multipath_ctl_fail(%struct.gctl_req* %77, %struct.g_class* %78, i32 1)
  br label %120

80:                                               ; preds = %72
  %81 = load i8*, i8** %6, align 8
  %82 = call i64 @strcmp(i8* %81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %86 = load %struct.g_class*, %struct.g_class** %5, align 8
  %87 = call i32 @g_multipath_ctl_fail(%struct.gctl_req* %85, %struct.g_class* %86, i32 0)
  br label %119

88:                                               ; preds = %80
  %89 = load i8*, i8** %6, align 8
  %90 = call i64 @strcmp(i8* %89, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  %93 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %94 = load %struct.g_class*, %struct.g_class** %5, align 8
  %95 = call i32 @g_multipath_ctl_remove(%struct.gctl_req* %93, %struct.g_class* %94)
  br label %118

96:                                               ; preds = %88
  %97 = load i8*, i8** %6, align 8
  %98 = call i64 @strcmp(i8* %97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %102 = load %struct.g_class*, %struct.g_class** %5, align 8
  %103 = call i32 @g_multipath_ctl_rotate(%struct.gctl_req* %101, %struct.g_class* %102)
  br label %117

104:                                              ; preds = %96
  %105 = load i8*, i8** %6, align 8
  %106 = call i64 @strcmp(i8* %105, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %110 = load %struct.g_class*, %struct.g_class** %5, align 8
  %111 = call i32 @g_multipath_ctl_getactive(%struct.gctl_req* %109, %struct.g_class* %110)
  br label %116

112:                                              ; preds = %104
  %113 = load %struct.gctl_req*, %struct.gctl_req** %4, align 8
  %114 = load i8*, i8** %6, align 8
  %115 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %113, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i8* %114)
  br label %116

116:                                              ; preds = %112, %108
  br label %117

117:                                              ; preds = %116, %100
  br label %118

118:                                              ; preds = %117, %92
  br label %119

119:                                              ; preds = %118, %84
  br label %120

120:                                              ; preds = %119, %76
  br label %121

121:                                              ; preds = %120, %68
  br label %122

122:                                              ; preds = %121, %60
  br label %123

123:                                              ; preds = %122, %52
  br label %124

124:                                              ; preds = %123, %44
  br label %125

125:                                              ; preds = %124, %36
  br label %126

126:                                              ; preds = %125, %28
  br label %127

127:                                              ; preds = %126, %21
  br label %128

128:                                              ; preds = %127, %13
  ret void
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i64* @gctl_get_paraml(%struct.gctl_req*, i8*, i32) #1

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @g_multipath_ctl_add(%struct.gctl_req*, %struct.g_class*) #1

declare dso_local i32 @g_multipath_ctl_prefer(%struct.gctl_req*, %struct.g_class*) #1

declare dso_local i32 @g_multipath_ctl_create(%struct.gctl_req*, %struct.g_class*) #1

declare dso_local i32 @g_multipath_ctl_configure(%struct.gctl_req*, %struct.g_class*) #1

declare dso_local i32 @g_multipath_ctl_stop(%struct.gctl_req*, %struct.g_class*) #1

declare dso_local i32 @g_multipath_ctl_destroy(%struct.gctl_req*, %struct.g_class*) #1

declare dso_local i32 @g_multipath_ctl_fail(%struct.gctl_req*, %struct.g_class*, i32) #1

declare dso_local i32 @g_multipath_ctl_remove(%struct.gctl_req*, %struct.g_class*) #1

declare dso_local i32 @g_multipath_ctl_rotate(%struct.gctl_req*, %struct.g_class*) #1

declare dso_local i32 @g_multipath_ctl_getactive(%struct.gctl_req*, %struct.g_class*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
