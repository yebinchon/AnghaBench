; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clkdtrace.c_dtnfsclient_getargdesc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clkdtrace.c_dtnfsclient_getargdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@nfscl_accesscache_flush_done_id = common dso_local global i64 0, align 8
@nfscl_attrcache_flush_done_id = common dso_local global i64 0, align 8
@nfscl_attrcache_get_miss_id = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"struct vnode *\00", align 1
@DTRACE_ARGNONE = common dso_local global i8* null, align 8
@nfscl_accesscache_get_hit_id = common dso_local global i64 0, align 8
@nfscl_accesscache_get_miss_id = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"uid_t\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"uint32_t\00", align 1
@nfscl_accesscache_load_done_id = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@nfscl_attrcache_get_hit_id = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"struct vattr *\00", align 1
@nfscl_attrcache_load_done_id = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"struct mbuf *\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"struct ucred *\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i8*, %struct.TYPE_3__*)* @dtnfsclient_getargdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dtnfsclient_getargdesc(i8* %0, i64 %1, i8* %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %8, align 8
  store i8* null, i8** %9, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @nfscl_accesscache_flush_done_id, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %21, label %13

13:                                               ; preds = %4
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @nfscl_attrcache_flush_done_id, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @nfscl_attrcache_get_miss_id, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %17, %13, %4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %26 [
    i32 0, label %25
  ]

25:                                               ; preds = %21
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %31

26:                                               ; preds = %21
  %27 = load i8*, i8** @DTRACE_ARGNONE, align 8
  %28 = ptrtoint i8* %27 to i32
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %26, %25
  br label %128

32:                                               ; preds = %17
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @nfscl_accesscache_get_hit_id, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @nfscl_accesscache_get_miss_id, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %36, %32
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %47 [
    i32 0, label %44
    i32 1, label %45
    i32 2, label %46
  ]

44:                                               ; preds = %40
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %52

45:                                               ; preds = %40
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %52

46:                                               ; preds = %40
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %52

47:                                               ; preds = %40
  %48 = load i8*, i8** @DTRACE_ARGNONE, align 8
  %49 = ptrtoint i8* %48 to i32
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %47, %46, %45, %44
  br label %127

53:                                               ; preds = %36
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* @nfscl_accesscache_load_done_id, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %71

57:                                               ; preds = %53
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  switch i32 %60, label %65 [
    i32 0, label %61
    i32 1, label %62
    i32 2, label %63
    i32 3, label %64
  ]

61:                                               ; preds = %57
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %70

62:                                               ; preds = %57
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %70

63:                                               ; preds = %57
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %70

64:                                               ; preds = %57
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %70

65:                                               ; preds = %57
  %66 = load i8*, i8** @DTRACE_ARGNONE, align 8
  %67 = ptrtoint i8* %66 to i32
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %65, %64, %63, %62, %61
  br label %126

71:                                               ; preds = %53
  %72 = load i64, i64* %6, align 8
  %73 = load i64, i64* @nfscl_attrcache_get_hit_id, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %71
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  switch i32 %78, label %81 [
    i32 0, label %79
    i32 1, label %80
  ]

79:                                               ; preds = %75
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %86

80:                                               ; preds = %75
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  br label %86

81:                                               ; preds = %75
  %82 = load i8*, i8** @DTRACE_ARGNONE, align 8
  %83 = ptrtoint i8* %82 to i32
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %81, %80, %79
  br label %125

87:                                               ; preds = %71
  %88 = load i64, i64* %6, align 8
  %89 = load i64, i64* @nfscl_attrcache_load_done_id, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %104

91:                                               ; preds = %87
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  switch i32 %94, label %98 [
    i32 0, label %95
    i32 1, label %96
    i32 2, label %97
  ]

95:                                               ; preds = %91
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %103

96:                                               ; preds = %91
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  br label %103

97:                                               ; preds = %91
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %103

98:                                               ; preds = %91
  %99 = load i8*, i8** @DTRACE_ARGNONE, align 8
  %100 = ptrtoint i8* %99 to i32
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  br label %103

103:                                              ; preds = %98, %97, %96, %95
  br label %124

104:                                              ; preds = %87
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  switch i32 %107, label %118 [
    i32 0, label %108
    i32 1, label %109
    i32 2, label %110
    i32 3, label %111
    i32 4, label %112
  ]

108:                                              ; preds = %104
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %123

109:                                              ; preds = %104
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %123

110:                                              ; preds = %104
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8** %9, align 8
  br label %123

111:                                              ; preds = %104
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %123

112:                                              ; preds = %104
  %113 = load i64, i64* %6, align 8
  %114 = call i32 @dtnfs234_isdoneprobe(i64 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %123

117:                                              ; preds = %112
  br label %118

118:                                              ; preds = %104, %117
  %119 = load i8*, i8** @DTRACE_ARGNONE, align 8
  %120 = ptrtoint i8* %119 to i32
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 4
  br label %123

123:                                              ; preds = %118, %116, %111, %110, %109, %108
  br label %124

124:                                              ; preds = %123, %103
  br label %125

125:                                              ; preds = %124, %86
  br label %126

126:                                              ; preds = %125, %70
  br label %127

127:                                              ; preds = %126, %52
  br label %128

128:                                              ; preds = %127, %31
  %129 = load i8*, i8** %9, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %137

131:                                              ; preds = %128
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i8*, i8** %9, align 8
  %136 = call i32 @strlcpy(i32 %134, i8* %135, i32 4)
  br label %137

137:                                              ; preds = %131, %128
  ret void
}

declare dso_local i32 @dtnfs234_isdoneprobe(i64) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
