; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli_ctl.c_g_eli_ctl_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli_ctl.c_g_eli_ctl_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gctl_req = type { i32 }
%struct.g_class = type { i32 }
%struct.g_eli_metadata = type { i32 }
%struct.g_eli_softc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.g_provider = type { i8* }
%struct.g_consumer = type { %struct.g_provider* }

@G_ELI_DATAIVKEYLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"nargs\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"No '%s' argument.\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Invalid number of arguments.\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"arg0\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"No 'arg%u' argument.\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@G_ELI_USERKEYLEN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"Provider %s is invalid.\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Cannot read metadata from %s (error=%d).\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"No valid keys on %s.\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Wrong key for %s.\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"Cannot decrypt Master Key for %s (error=%d).\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"Using Master Key %u for %s.\00", align 1
@G_ELI_FLAG_SUSPEND = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [28 x i8] c"Device %s is not suspended.\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"Resumed %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gctl_req*, %struct.g_class*)* @g_eli_ctl_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_eli_ctl_resume(%struct.gctl_req* %0, %struct.g_class* %1) #0 {
  %3 = alloca %struct.gctl_req*, align 8
  %4 = alloca %struct.g_class*, align 8
  %5 = alloca %struct.g_eli_metadata, align 4
  %6 = alloca %struct.g_eli_softc*, align 8
  %7 = alloca %struct.g_provider*, align 8
  %8 = alloca %struct.g_consumer*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.g_eli_metadata*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.gctl_req* %0, %struct.gctl_req** %3, align 8
  store %struct.g_class* %1, %struct.g_class** %4, align 8
  %18 = load i32, i32* @G_ELI_DATAIVKEYLEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %11, align 8
  %21 = alloca %struct.g_eli_metadata, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  %22 = call i32 (...) @g_topology_assert()
  %23 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %24 = call i32* @gctl_get_paraml(%struct.gctl_req* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4)
  store i32* %24, i32** %13, align 8
  %25 = load i32*, i32** %13, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %29 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %17, align 4
  br label %168

30:                                               ; preds = %2
  %31 = load i32*, i32** %13, align 8
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 1
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %36 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %17, align 4
  br label %168

37:                                               ; preds = %30
  %38 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %39 = call i8* @gctl_get_asciiparam(%struct.gctl_req* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i8* %39, i8** %9, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %44 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 0)
  store i32 1, i32* %17, align 4
  br label %168

45:                                               ; preds = %37
  %46 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %47 = call %struct.g_eli_metadata* @gctl_get_param(%struct.gctl_req* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32* %14)
  store %struct.g_eli_metadata* %47, %struct.g_eli_metadata** %10, align 8
  %48 = load %struct.g_eli_metadata*, %struct.g_eli_metadata** %10, align 8
  %49 = icmp eq %struct.g_eli_metadata* %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* @G_ELI_USERKEYLEN, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50, %45
  %55 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %56 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %55, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %17, align 4
  br label %168

57:                                               ; preds = %50
  %58 = load %struct.g_class*, %struct.g_class** %4, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = call %struct.g_eli_softc* @g_eli_find_device(%struct.g_class* %58, i8* %59)
  store %struct.g_eli_softc* %60, %struct.g_eli_softc** %6, align 8
  %61 = load %struct.g_eli_softc*, %struct.g_eli_softc** %6, align 8
  %62 = icmp eq %struct.g_eli_softc* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* %65)
  store i32 1, i32* %17, align 4
  br label %168

67:                                               ; preds = %57
  %68 = load %struct.g_eli_softc*, %struct.g_eli_softc** %6, align 8
  %69 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %68, i32 0, i32 2
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = call %struct.g_consumer* @LIST_FIRST(i32* %71)
  store %struct.g_consumer* %72, %struct.g_consumer** %8, align 8
  %73 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %74 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %73, i32 0, i32 0
  %75 = load %struct.g_provider*, %struct.g_provider** %74, align 8
  store %struct.g_provider* %75, %struct.g_provider** %7, align 8
  %76 = load %struct.g_class*, %struct.g_class** %4, align 8
  %77 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %78 = call i32 @g_eli_read_metadata(%struct.g_class* %76, %struct.g_provider* %77, %struct.g_eli_metadata* %5)
  store i32 %78, i32* %15, align 4
  %79 = load i32, i32* %15, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %67
  %82 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %83 = load i8*, i8** %9, align 8
  %84 = load i32, i32* %15, align 4
  %85 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %82, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i8* %83, i32 %84)
  store i32 1, i32* %17, align 4
  br label %168

86:                                               ; preds = %67
  %87 = getelementptr inbounds %struct.g_eli_metadata, %struct.g_eli_metadata* %5, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %86
  %91 = call i32 @explicit_bzero(%struct.g_eli_metadata* %5, i32 4)
  %92 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %93 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %94 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %92, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* %95)
  store i32 1, i32* %17, align 4
  br label %168

97:                                               ; preds = %86
  %98 = load %struct.g_eli_metadata*, %struct.g_eli_metadata** %10, align 8
  %99 = call i32 @g_eli_mkey_decrypt_any(%struct.g_eli_metadata* %5, %struct.g_eli_metadata* %98, %struct.g_eli_metadata* %21, i32* %16)
  store i32 %99, i32* %15, align 4
  %100 = load %struct.g_eli_metadata*, %struct.g_eli_metadata** %10, align 8
  %101 = load i32, i32* %14, align 4
  %102 = call i32 @explicit_bzero(%struct.g_eli_metadata* %100, i32 %101)
  %103 = load i32, i32* %15, align 4
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %105, label %112

105:                                              ; preds = %97
  %106 = call i32 @explicit_bzero(%struct.g_eli_metadata* %5, i32 4)
  %107 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %108 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %109 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %107, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8* %110)
  store i32 1, i32* %17, align 4
  br label %168

112:                                              ; preds = %97
  %113 = load i32, i32* %15, align 4
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %112
  %116 = call i32 @explicit_bzero(%struct.g_eli_metadata* %5, i32 4)
  %117 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %118 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %119 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = load i32, i32* %15, align 4
  %122 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %117, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0), i8* %120, i32 %121)
  store i32 1, i32* %17, align 4
  br label %168

123:                                              ; preds = %112
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %16, align 4
  %126 = sext i32 %125 to i64
  %127 = inttoptr i64 %126 to i8*
  %128 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %129 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 (i32, i8*, i8*, ...) @G_ELI_DEBUG(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i8* %127, i8* %130)
  %132 = load %struct.g_eli_softc*, %struct.g_eli_softc** %6, align 8
  %133 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %132, i32 0, i32 1
  %134 = call i32 @mtx_lock(i32* %133)
  %135 = load %struct.g_eli_softc*, %struct.g_eli_softc** %6, align 8
  %136 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @G_ELI_FLAG_SUSPEND, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %124
  %142 = load %struct.gctl_req*, %struct.gctl_req** %3, align 8
  %143 = load i8*, i8** %9, align 8
  %144 = call i32 (%struct.gctl_req*, i8*, ...) @gctl_error(%struct.gctl_req* %142, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i8* %143)
  br label %160

145:                                              ; preds = %124
  %146 = load %struct.g_eli_softc*, %struct.g_eli_softc** %6, align 8
  %147 = call i32 @g_eli_mkey_propagate(%struct.g_eli_softc* %146, %struct.g_eli_metadata* %21)
  %148 = load i32, i32* @G_ELI_FLAG_SUSPEND, align 4
  %149 = xor i32 %148, -1
  %150 = load %struct.g_eli_softc*, %struct.g_eli_softc** %6, align 8
  %151 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = and i32 %152, %149
  store i32 %153, i32* %151, align 8
  %154 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %155 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 (i32, i8*, i8*, ...) @G_ELI_DEBUG(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i8* %156)
  %158 = load %struct.g_eli_softc*, %struct.g_eli_softc** %6, align 8
  %159 = call i32 @wakeup(%struct.g_eli_softc* %158)
  br label %160

160:                                              ; preds = %145, %141
  %161 = load %struct.g_eli_softc*, %struct.g_eli_softc** %6, align 8
  %162 = getelementptr inbounds %struct.g_eli_softc, %struct.g_eli_softc* %161, i32 0, i32 1
  %163 = call i32 @mtx_unlock(i32* %162)
  %164 = mul nuw i64 4, %19
  %165 = trunc i64 %164 to i32
  %166 = call i32 @explicit_bzero(%struct.g_eli_metadata* %21, i32 %165)
  %167 = call i32 @explicit_bzero(%struct.g_eli_metadata* %5, i32 4)
  store i32 0, i32* %17, align 4
  br label %168

168:                                              ; preds = %160, %115, %105, %90, %81, %63, %54, %42, %34, %27
  %169 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %169)
  %170 = load i32, i32* %17, align 4
  switch i32 %170, label %172 [
    i32 0, label %171
    i32 1, label %171
  ]

171:                                              ; preds = %168, %168
  ret void

172:                                              ; preds = %168
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @g_topology_assert(...) #2

declare dso_local i32* @gctl_get_paraml(%struct.gctl_req*, i8*, i32) #2

declare dso_local i32 @gctl_error(%struct.gctl_req*, i8*, ...) #2

declare dso_local i8* @gctl_get_asciiparam(%struct.gctl_req*, i8*) #2

declare dso_local %struct.g_eli_metadata* @gctl_get_param(%struct.gctl_req*, i8*, i32*) #2

declare dso_local %struct.g_eli_softc* @g_eli_find_device(%struct.g_class*, i8*) #2

declare dso_local %struct.g_consumer* @LIST_FIRST(i32*) #2

declare dso_local i32 @g_eli_read_metadata(%struct.g_class*, %struct.g_provider*, %struct.g_eli_metadata*) #2

declare dso_local i32 @explicit_bzero(%struct.g_eli_metadata*, i32) #2

declare dso_local i32 @g_eli_mkey_decrypt_any(%struct.g_eli_metadata*, %struct.g_eli_metadata*, %struct.g_eli_metadata*, i32*) #2

declare dso_local i32 @G_ELI_DEBUG(i32, i8*, i8*, ...) #2

declare dso_local i32 @mtx_lock(i32*) #2

declare dso_local i32 @g_eli_mkey_propagate(%struct.g_eli_softc*, %struct.g_eli_metadata*) #2

declare dso_local i32 @wakeup(%struct.g_eli_softc*) #2

declare dso_local i32 @mtx_unlock(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
