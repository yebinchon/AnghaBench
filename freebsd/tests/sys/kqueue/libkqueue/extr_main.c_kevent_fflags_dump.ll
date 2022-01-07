; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/kqueue/libkqueue/extr_main.c_kevent_fflags_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/kqueue/libkqueue/extr_main.c_kevent_fflags_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kevent = type { i64, i32 }

@EVFILT_PROC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"fflags = %x (\00", align 1
@NOTE_EXIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"NOTE_EXIT \00", align 1
@NOTE_FORK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"NOTE_FORK \00", align 1
@NOTE_EXEC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"NOTE_EXEC \00", align 1
@NOTE_CHILD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"NOTE_CHILD \00", align 1
@NOTE_TRACKERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"NOTE_TRACKERR \00", align 1
@NOTE_TRACK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"NOTE_TRACK \00", align 1
@EVFILT_PROCDESC = common dso_local global i64 0, align 8
@EVFILT_VNODE = common dso_local global i64 0, align 8
@NOTE_DELETE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"NOTE_DELETE \00", align 1
@NOTE_WRITE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"NOTE_WRITE \00", align 1
@NOTE_EXTEND = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"NOTE_EXTEND \00", align 1
@NOTE_ATTRIB = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [13 x i8] c"NOTE_ATTRIB \00", align 1
@NOTE_LINK = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [11 x i8] c"NOTE_LINK \00", align 1
@NOTE_RENAME = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [13 x i8] c"NOTE_RENAME \00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"fflags = %x\00", align 1
@NOTE_REVOKE = common dso_local global i32 0, align 4
@NOTE_TRUNCATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @kevent_fflags_dump(%struct.kevent* %0) #0 {
  %2 = alloca %struct.kevent*, align 8
  %3 = alloca i8*, align 8
  store %struct.kevent* %0, %struct.kevent** %2, align 8
  %4 = call i8* @calloc(i32 1, i32 1024)
  store i8* %4, i8** %3, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 (...) @abort() #3
  unreachable

8:                                                ; preds = %1
  %9 = load %struct.kevent*, %struct.kevent** %2, align 8
  %10 = getelementptr inbounds %struct.kevent, %struct.kevent* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @EVFILT_PROC, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %86

14:                                               ; preds = %8
  %15 = load i8*, i8** %3, align 8
  %16 = load %struct.kevent*, %struct.kevent** %2, align 8
  %17 = getelementptr inbounds %struct.kevent, %struct.kevent* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @snprintf(i8* %15, i32 1024, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.kevent*, %struct.kevent** %2, align 8
  %21 = getelementptr inbounds %struct.kevent, %struct.kevent* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @NOTE_EXIT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %14
  %27 = load i8*, i8** %3, align 8
  %28 = call i8* @strncat(i8* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 64)
  br label %29

29:                                               ; preds = %26, %14
  %30 = load %struct.kevent*, %struct.kevent** %2, align 8
  %31 = getelementptr inbounds %struct.kevent, %struct.kevent* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @NOTE_FORK, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i8*, i8** %3, align 8
  %38 = call i8* @strncat(i8* %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64 64)
  br label %39

39:                                               ; preds = %36, %29
  %40 = load %struct.kevent*, %struct.kevent** %2, align 8
  %41 = getelementptr inbounds %struct.kevent, %struct.kevent* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @NOTE_EXEC, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i8*, i8** %3, align 8
  %48 = call i8* @strncat(i8* %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i64 64)
  br label %49

49:                                               ; preds = %46, %39
  %50 = load %struct.kevent*, %struct.kevent** %2, align 8
  %51 = getelementptr inbounds %struct.kevent, %struct.kevent* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @NOTE_CHILD, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load i8*, i8** %3, align 8
  %58 = call i8* @strncat(i8* %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i64 64)
  br label %59

59:                                               ; preds = %56, %49
  %60 = load %struct.kevent*, %struct.kevent** %2, align 8
  %61 = getelementptr inbounds %struct.kevent, %struct.kevent* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @NOTE_TRACKERR, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load i8*, i8** %3, align 8
  %68 = call i8* @strncat(i8* %67, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i64 64)
  br label %69

69:                                               ; preds = %66, %59
  %70 = load %struct.kevent*, %struct.kevent** %2, align 8
  %71 = getelementptr inbounds %struct.kevent, %struct.kevent* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @NOTE_TRACK, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load i8*, i8** %3, align 8
  %78 = call i8* @strncat(i8* %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i64 64)
  br label %79

79:                                               ; preds = %76, %69
  %80 = load i8*, i8** %3, align 8
  %81 = load i8*, i8** %3, align 8
  %82 = call i32 @strlen(i8* %81)
  %83 = sub nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %80, i64 %84
  store i8 41, i8* %85, align 1
  br label %220

86:                                               ; preds = %8
  %87 = load %struct.kevent*, %struct.kevent** %2, align 8
  %88 = getelementptr inbounds %struct.kevent, %struct.kevent* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @EVFILT_PROCDESC, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %134

92:                                               ; preds = %86
  %93 = load i8*, i8** %3, align 8
  %94 = load %struct.kevent*, %struct.kevent** %2, align 8
  %95 = getelementptr inbounds %struct.kevent, %struct.kevent* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @snprintf(i8* %93, i32 1024, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %96)
  %98 = load %struct.kevent*, %struct.kevent** %2, align 8
  %99 = getelementptr inbounds %struct.kevent, %struct.kevent* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @NOTE_EXIT, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %92
  %105 = load i8*, i8** %3, align 8
  %106 = call i8* @strncat(i8* %105, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 64)
  br label %107

107:                                              ; preds = %104, %92
  %108 = load %struct.kevent*, %struct.kevent** %2, align 8
  %109 = getelementptr inbounds %struct.kevent, %struct.kevent* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @NOTE_FORK, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %107
  %115 = load i8*, i8** %3, align 8
  %116 = call i8* @strncat(i8* %115, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64 64)
  br label %117

117:                                              ; preds = %114, %107
  %118 = load %struct.kevent*, %struct.kevent** %2, align 8
  %119 = getelementptr inbounds %struct.kevent, %struct.kevent* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @NOTE_EXEC, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %117
  %125 = load i8*, i8** %3, align 8
  %126 = call i8* @strncat(i8* %125, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i64 64)
  br label %127

127:                                              ; preds = %124, %117
  %128 = load i8*, i8** %3, align 8
  %129 = load i8*, i8** %3, align 8
  %130 = call i32 @strlen(i8* %129)
  %131 = sub nsw i32 %130, 1
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %128, i64 %132
  store i8 41, i8* %133, align 1
  br label %219

134:                                              ; preds = %86
  %135 = load %struct.kevent*, %struct.kevent** %2, align 8
  %136 = getelementptr inbounds %struct.kevent, %struct.kevent* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @EVFILT_VNODE, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %212

140:                                              ; preds = %134
  %141 = load i8*, i8** %3, align 8
  %142 = load %struct.kevent*, %struct.kevent** %2, align 8
  %143 = getelementptr inbounds %struct.kevent, %struct.kevent* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @snprintf(i8* %141, i32 1024, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %144)
  %146 = load %struct.kevent*, %struct.kevent** %2, align 8
  %147 = getelementptr inbounds %struct.kevent, %struct.kevent* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @NOTE_DELETE, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %140
  %153 = load i8*, i8** %3, align 8
  %154 = call i8* @strncat(i8* %153, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i64 64)
  br label %155

155:                                              ; preds = %152, %140
  %156 = load %struct.kevent*, %struct.kevent** %2, align 8
  %157 = getelementptr inbounds %struct.kevent, %struct.kevent* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @NOTE_WRITE, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %155
  %163 = load i8*, i8** %3, align 8
  %164 = call i8* @strncat(i8* %163, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i64 64)
  br label %165

165:                                              ; preds = %162, %155
  %166 = load %struct.kevent*, %struct.kevent** %2, align 8
  %167 = getelementptr inbounds %struct.kevent, %struct.kevent* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @NOTE_EXTEND, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %165
  %173 = load i8*, i8** %3, align 8
  %174 = call i8* @strncat(i8* %173, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i64 64)
  br label %175

175:                                              ; preds = %172, %165
  %176 = load %struct.kevent*, %struct.kevent** %2, align 8
  %177 = getelementptr inbounds %struct.kevent, %struct.kevent* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @NOTE_ATTRIB, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %175
  %183 = load i8*, i8** %3, align 8
  %184 = call i8* @strncat(i8* %183, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i64 64)
  br label %185

185:                                              ; preds = %182, %175
  %186 = load %struct.kevent*, %struct.kevent** %2, align 8
  %187 = getelementptr inbounds %struct.kevent, %struct.kevent* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @NOTE_LINK, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %185
  %193 = load i8*, i8** %3, align 8
  %194 = call i8* @strncat(i8* %193, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i64 64)
  br label %195

195:                                              ; preds = %192, %185
  %196 = load %struct.kevent*, %struct.kevent** %2, align 8
  %197 = getelementptr inbounds %struct.kevent, %struct.kevent* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @NOTE_RENAME, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %195
  %203 = load i8*, i8** %3, align 8
  %204 = call i8* @strncat(i8* %203, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i64 64)
  br label %205

205:                                              ; preds = %202, %195
  %206 = load i8*, i8** %3, align 8
  %207 = load i8*, i8** %3, align 8
  %208 = call i32 @strlen(i8* %207)
  %209 = sub nsw i32 %208, 1
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8, i8* %206, i64 %210
  store i8 41, i8* %211, align 1
  br label %218

212:                                              ; preds = %134
  %213 = load i8*, i8** %3, align 8
  %214 = load %struct.kevent*, %struct.kevent** %2, align 8
  %215 = getelementptr inbounds %struct.kevent, %struct.kevent* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @snprintf(i8* %213, i32 1024, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32 %216)
  br label %218

218:                                              ; preds = %212, %205
  br label %219

219:                                              ; preds = %218, %127
  br label %220

220:                                              ; preds = %219, %79
  %221 = load i8*, i8** %3, align 8
  ret i8* %221
}

declare dso_local i8* @calloc(i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i8* @strncat(i8*, i8*, i64) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
