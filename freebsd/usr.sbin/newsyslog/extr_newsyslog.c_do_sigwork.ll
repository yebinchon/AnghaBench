; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/newsyslog/extr_newsyslog.c_do_sigwork.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/newsyslog/extr_newsyslog.c_do_sigwork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigwork_entry = type { i64, i32, i64, i8*, i32, i8* }

@nosignal = common dso_local global i64 0, align 8
@rotatereq = common dso_local global i32 0, align 4
@sw_nextp = common dso_local global i32 0, align 4
@noaction = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"\09sh -c '%s %d'\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"\09kill -%d %d \09\09# %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"\09sleep %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s %d\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"can't allocate memory to run %s\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [17 x i8] c"Run command: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"%s: returned non-zero exit code: %d\00", align 1
@errno = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [29 x i8] c"can't notify %s, pid %d = %s\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Notified %s pid %d = %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"Pause %d second(s) between signals\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sigwork_entry*)* @do_sigwork to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_sigwork(%struct.sigwork_entry* %0) #0 {
  %2 = alloca %struct.sigwork_entry*, align 8
  %3 = alloca %struct.sigwork_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.sigwork_entry* %0, %struct.sigwork_entry** %2, align 8
  %7 = load %struct.sigwork_entry*, %struct.sigwork_entry** %2, align 8
  %8 = getelementptr inbounds %struct.sigwork_entry, %struct.sigwork_entry* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load %struct.sigwork_entry*, %struct.sigwork_entry** %2, align 8
  %13 = getelementptr inbounds %struct.sigwork_entry, %struct.sigwork_entry* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load %struct.sigwork_entry*, %struct.sigwork_entry** %2, align 8
  %18 = getelementptr inbounds %struct.sigwork_entry, %struct.sigwork_entry* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %11
  br label %179

22:                                               ; preds = %16, %1
  %23 = load i64, i64* @nosignal, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i32, i32* @rotatereq, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load %struct.sigwork_entry*, %struct.sigwork_entry** %2, align 8
  %30 = getelementptr inbounds %struct.sigwork_entry, %struct.sigwork_entry* %29, i32 0, i32 1
  store i32 -1, i32* %30, align 8
  br label %31

31:                                               ; preds = %28, %25
  br label %179

32:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  %33 = load %struct.sigwork_entry*, %struct.sigwork_entry** %2, align 8
  %34 = load i32, i32* @sw_nextp, align 4
  %35 = call %struct.sigwork_entry* @SLIST_NEXT(%struct.sigwork_entry* %33, i32 %34)
  store %struct.sigwork_entry* %35, %struct.sigwork_entry** %3, align 8
  %36 = load %struct.sigwork_entry*, %struct.sigwork_entry** %3, align 8
  %37 = icmp ne %struct.sigwork_entry* %36, null
  br i1 %37, label %38, label %49

38:                                               ; preds = %32
  %39 = load %struct.sigwork_entry*, %struct.sigwork_entry** %2, align 8
  %40 = getelementptr inbounds %struct.sigwork_entry, %struct.sigwork_entry* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.sigwork_entry*, %struct.sigwork_entry** %3, align 8
  %43 = getelementptr inbounds %struct.sigwork_entry, %struct.sigwork_entry* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  store i32 10, i32* %5, align 4
  br label %48

47:                                               ; preds = %38
  store i32 1, i32* %5, align 4
  br label %48

48:                                               ; preds = %47, %46
  br label %49

49:                                               ; preds = %48, %32
  %50 = load i64, i64* @noaction, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %84

52:                                               ; preds = %49
  %53 = load %struct.sigwork_entry*, %struct.sigwork_entry** %2, align 8
  %54 = getelementptr inbounds %struct.sigwork_entry, %struct.sigwork_entry* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load %struct.sigwork_entry*, %struct.sigwork_entry** %2, align 8
  %59 = getelementptr inbounds %struct.sigwork_entry, %struct.sigwork_entry* %58, i32 0, i32 3
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.sigwork_entry*, %struct.sigwork_entry** %2, align 8
  %62 = getelementptr inbounds %struct.sigwork_entry, %struct.sigwork_entry* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %60, i32 %63)
  br label %83

65:                                               ; preds = %52
  %66 = load %struct.sigwork_entry*, %struct.sigwork_entry** %2, align 8
  %67 = getelementptr inbounds %struct.sigwork_entry, %struct.sigwork_entry* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.sigwork_entry*, %struct.sigwork_entry** %2, align 8
  %70 = getelementptr inbounds %struct.sigwork_entry, %struct.sigwork_entry* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  %73 = load %struct.sigwork_entry*, %struct.sigwork_entry** %2, align 8
  %74 = getelementptr inbounds %struct.sigwork_entry, %struct.sigwork_entry* %73, i32 0, i32 3
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %72, i8* %75)
  %77 = load i32, i32* %5, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %65
  %80 = load i32, i32* %5, align 4
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %79, %65
  br label %83

83:                                               ; preds = %82, %57
  br label %179

84:                                               ; preds = %49
  %85 = load %struct.sigwork_entry*, %struct.sigwork_entry** %2, align 8
  %86 = getelementptr inbounds %struct.sigwork_entry, %struct.sigwork_entry* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %122

89:                                               ; preds = %84
  %90 = load %struct.sigwork_entry*, %struct.sigwork_entry** %2, align 8
  %91 = getelementptr inbounds %struct.sigwork_entry, %struct.sigwork_entry* %90, i32 0, i32 3
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.sigwork_entry*, %struct.sigwork_entry** %2, align 8
  %94 = getelementptr inbounds %struct.sigwork_entry, %struct.sigwork_entry* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @asprintf(i8** %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %92, i32 %95)
  %97 = load i8*, i8** %6, align 8
  %98 = icmp eq i8* %97, null
  br i1 %98, label %99, label %104

99:                                               ; preds = %89
  %100 = load %struct.sigwork_entry*, %struct.sigwork_entry** %2, align 8
  %101 = getelementptr inbounds %struct.sigwork_entry, %struct.sigwork_entry* %100, i32 0, i32 3
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 (i8*, i8*, ...) @warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %102)
  br label %179

104:                                              ; preds = %89
  %105 = load i64, i64* @verbose, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i8*, i8** %6, align 8
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %108)
  br label %110

110:                                              ; preds = %107, %104
  %111 = load i8*, i8** %6, align 8
  %112 = call i32 @system(i8* %111)
  store i32 %112, i32* %4, align 4
  %113 = load i32, i32* %4, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load i8*, i8** %6, align 8
  %117 = load i32, i32* %4, align 4
  %118 = call i32 @warnx(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8* %116, i32 %117)
  br label %119

119:                                              ; preds = %115, %110
  %120 = load i8*, i8** %6, align 8
  %121 = call i32 @free(i8* %120)
  br label %179

122:                                              ; preds = %84
  %123 = load %struct.sigwork_entry*, %struct.sigwork_entry** %2, align 8
  %124 = getelementptr inbounds %struct.sigwork_entry, %struct.sigwork_entry* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.sigwork_entry*, %struct.sigwork_entry** %2, align 8
  %127 = getelementptr inbounds %struct.sigwork_entry, %struct.sigwork_entry* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @kill(i64 %125, i32 %128)
  store i32 %129, i32* %4, align 4
  %130 = load i32, i32* %4, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %151

132:                                              ; preds = %122
  %133 = load i64, i64* @errno, align 8
  %134 = load i64, i64* @ESRCH, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  %137 = load %struct.sigwork_entry*, %struct.sigwork_entry** %2, align 8
  %138 = getelementptr inbounds %struct.sigwork_entry, %struct.sigwork_entry* %137, i32 0, i32 1
  store i32 0, i32* %138, align 8
  br label %139

139:                                              ; preds = %136, %132
  %140 = load %struct.sigwork_entry*, %struct.sigwork_entry** %2, align 8
  %141 = getelementptr inbounds %struct.sigwork_entry, %struct.sigwork_entry* %140, i32 0, i32 5
  %142 = load i8*, i8** %141, align 8
  %143 = load %struct.sigwork_entry*, %struct.sigwork_entry** %2, align 8
  %144 = getelementptr inbounds %struct.sigwork_entry, %struct.sigwork_entry* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = trunc i64 %145 to i32
  %147 = load %struct.sigwork_entry*, %struct.sigwork_entry** %2, align 8
  %148 = getelementptr inbounds %struct.sigwork_entry, %struct.sigwork_entry* %147, i32 0, i32 3
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 (i8*, i8*, ...) @warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8* %142, i32 %146, i8* %149)
  br label %179

151:                                              ; preds = %122
  %152 = load i64, i64* @verbose, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %166

154:                                              ; preds = %151
  %155 = load %struct.sigwork_entry*, %struct.sigwork_entry** %2, align 8
  %156 = getelementptr inbounds %struct.sigwork_entry, %struct.sigwork_entry* %155, i32 0, i32 5
  %157 = load i8*, i8** %156, align 8
  %158 = load %struct.sigwork_entry*, %struct.sigwork_entry** %2, align 8
  %159 = getelementptr inbounds %struct.sigwork_entry, %struct.sigwork_entry* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = trunc i64 %160 to i32
  %162 = load %struct.sigwork_entry*, %struct.sigwork_entry** %2, align 8
  %163 = getelementptr inbounds %struct.sigwork_entry, %struct.sigwork_entry* %162, i32 0, i32 3
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8* %157, i32 %161, i8* %164)
  br label %166

166:                                              ; preds = %154, %151
  %167 = load i32, i32* %5, align 4
  %168 = icmp sgt i32 %167, 0
  br i1 %168, label %169, label %178

169:                                              ; preds = %166
  %170 = load i64, i64* @verbose, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = load i32, i32* %5, align 4
  %174 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i32 %173)
  br label %175

175:                                              ; preds = %172, %169
  %176 = load i32, i32* %5, align 4
  %177 = call i32 @sleep(i32 %176)
  br label %178

178:                                              ; preds = %175, %166
  br label %179

179:                                              ; preds = %21, %31, %83, %99, %119, %178, %139
  ret void
}

declare dso_local %struct.sigwork_entry* @SLIST_NEXT(%struct.sigwork_entry*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, i32) #1

declare dso_local i32 @warn(i8*, i8*, ...) #1

declare dso_local i32 @system(i8*) #1

declare dso_local i32 @warnx(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @kill(i64, i32) #1

declare dso_local i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
