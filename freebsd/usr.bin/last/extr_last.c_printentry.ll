; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/last/extr_last.c_printentry.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/last/extr_last.c_printentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utmpx = type { i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.idtab = type { i32 }
%struct.tm = type { i32 }

@maxrec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"last\00", align 1
@d_first = common dso_local global i64 0, align 8
@yflag = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"%a %e %b %Y %R\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%a %e %b %R\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"%a %b %e %Y %R\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"%a %b %e %R\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"{:user/%-42s/%s}\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"boot time\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"shutdown time\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"old time\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"new time\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"{:user/%-10s/%s} {:tty/%-8s/%s} {:from/%-22.22s/%s}\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"seconds\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c" {:login-time/%s%c/%s}\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"  {:logout-time/still logged in}\0A\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"- {:logout-reason/%s}\00", align 1
@crmsg = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [3 x i8] c"%R\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"- {:logout-time/%s}\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@sflag = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [28 x i8] c"  ({:session-length/%8ld})\0A\00", align 1
@width = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [3 x i8] c"%T\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"  ({:session-length/%s})\0A\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c" ({:session-length/%ld+%s})\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.utmpx*, %struct.idtab*)* @printentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printentry(%struct.utmpx* %0, %struct.idtab* %1) #0 {
  %3 = alloca %struct.utmpx*, align 8
  %4 = alloca %struct.idtab*, align 8
  %5 = alloca [80 x i8], align 16
  %6 = alloca %struct.tm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.utmpx* %0, %struct.utmpx** %3, align 8
  store %struct.idtab* %1, %struct.idtab** %4, align 8
  %9 = load i32, i32* @maxrec, align 4
  %10 = icmp ne i32 %9, -1
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i32, i32* @maxrec, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* @maxrec, align 4
  %14 = icmp ne i32 %12, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = call i32 @exit(i32 0) #3
  unreachable

17:                                               ; preds = %11, %2
  %18 = call i32 @xo_open_instance(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.utmpx*, %struct.utmpx** %3, align 8
  %20 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = call %struct.tm* @localtime(i32* %8)
  store %struct.tm* %23, %struct.tm** %6, align 8
  %24 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %25 = load i64, i64* @d_first, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %17
  %28 = load i64, i64* @yflag, align 8
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0)
  br label %37

32:                                               ; preds = %17
  %33 = load i64, i64* @yflag, align 8
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0)
  br label %37

37:                                               ; preds = %32, %27
  %38 = phi i8* [ %31, %27 ], [ %36, %32 ]
  %39 = load %struct.tm*, %struct.tm** %6, align 8
  %40 = call i32 @strftime(i8* %24, i32 80, i8* %38, %struct.tm* %39)
  %41 = load %struct.utmpx*, %struct.utmpx** %3, align 8
  %42 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %63 [
    i32 132, label %44
    i32 129, label %46
    i32 130, label %48
    i32 131, label %50
    i32 128, label %52
  ]

44:                                               ; preds = %37
  %45 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %63

46:                                               ; preds = %37
  %47 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  br label %63

48:                                               ; preds = %37
  %49 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  br label %63

50:                                               ; preds = %37
  %51 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  br label %63

52:                                               ; preds = %37
  %53 = load %struct.utmpx*, %struct.utmpx** %3, align 8
  %54 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.utmpx*, %struct.utmpx** %3, align 8
  %57 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.utmpx*, %struct.utmpx** %3, align 8
  %60 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0), i32 %55, i32 %58, i32 %61)
  br label %63

63:                                               ; preds = %37, %52, %50, %48, %46, %44
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = call i32 @xo_attr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 %65)
  %67 = call i32 @ctf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0))
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to i8*
  %70 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %71 = load %struct.idtab*, %struct.idtab** %4, align 8
  %72 = icmp eq %struct.idtab* %71, null
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 10, i32 32
  %75 = call i32 (i8*, ...) @xo_emit(i8* %69, i8* %70, i32 %74)
  %76 = load %struct.idtab*, %struct.idtab** %4, align 8
  %77 = icmp eq %struct.idtab* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %63
  br label %163

79:                                               ; preds = %63
  %80 = load %struct.idtab*, %struct.idtab** %4, align 8
  %81 = getelementptr inbounds %struct.idtab, %struct.idtab* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %79
  %85 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0))
  br label %163

86:                                               ; preds = %79
  %87 = load %struct.idtab*, %struct.idtab** %4, align 8
  %88 = getelementptr inbounds %struct.idtab, %struct.idtab* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %86
  %92 = load %struct.idtab*, %struct.idtab** %4, align 8
  %93 = getelementptr inbounds %struct.idtab, %struct.idtab* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = sub nsw i32 0, %94
  %96 = load %struct.idtab*, %struct.idtab** %4, align 8
  %97 = getelementptr inbounds %struct.idtab, %struct.idtab* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* @crmsg, align 4
  %99 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0), i32 %98)
  br label %117

100:                                              ; preds = %86
  %101 = load %struct.idtab*, %struct.idtab** %4, align 8
  %102 = getelementptr inbounds %struct.idtab, %struct.idtab* %101, i32 0, i32 0
  %103 = call %struct.tm* @localtime(i32* %102)
  store %struct.tm* %103, %struct.tm** %6, align 8
  %104 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %105 = load %struct.tm*, %struct.tm** %6, align 8
  %106 = call i32 @strftime(i8* %104, i32 80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), %struct.tm* %105)
  %107 = load %struct.idtab*, %struct.idtab** %4, align 8
  %108 = getelementptr inbounds %struct.idtab, %struct.idtab* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = sext i32 %109 to i64
  %111 = call i32 @xo_attr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i64 %110)
  %112 = call i32 @ctf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0))
  %113 = sext i32 %112 to i64
  %114 = inttoptr i64 %113 to i8*
  %115 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %116 = call i32 (i8*, ...) @xo_emit(i8* %114, i8* %115)
  br label %117

117:                                              ; preds = %100, %91
  %118 = load %struct.idtab*, %struct.idtab** %4, align 8
  %119 = getelementptr inbounds %struct.idtab, %struct.idtab* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.utmpx*, %struct.utmpx** %3, align 8
  %122 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = sub nsw i32 %120, %124
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = call i32 @xo_attr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i64 %127)
  %129 = load i64, i64* @sflag, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %117
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0), i64 %133)
  br label %162

135:                                              ; preds = %117
  %136 = call %struct.tm* @gmtime(i32* %7)
  store %struct.tm* %136, %struct.tm** %6, align 8
  %137 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %138 = load i32, i32* @width, align 4
  %139 = icmp sge i32 %138, 8
  %140 = zext i1 %139 to i64
  %141 = select i1 %139, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0)
  %142 = load %struct.tm*, %struct.tm** %6, align 8
  %143 = call i32 @strftime(i8* %137, i32 80, i8* %141, %struct.tm* %142)
  %144 = load i32, i32* %7, align 4
  %145 = icmp slt i32 %144, 86400
  br i1 %145, label %146, label %152

146:                                              ; preds = %135
  %147 = call i32 @ctf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0))
  %148 = sext i32 %147 to i64
  %149 = inttoptr i64 %148 to i8*
  %150 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %151 = call i32 (i8*, ...) @xo_emit(i8* %149, i8* %150)
  br label %161

152:                                              ; preds = %135
  %153 = call i32 @ctf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0))
  %154 = sext i32 %153 to i64
  %155 = inttoptr i64 %154 to i8*
  %156 = load i32, i32* %7, align 4
  %157 = sext i32 %156 to i64
  %158 = sdiv i64 %157, 86400
  %159 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %160 = call i32 (i8*, ...) @xo_emit(i8* %155, i64 %158, i8* %159)
  br label %161

161:                                              ; preds = %152, %146
  br label %162

162:                                              ; preds = %161, %131
  br label %163

163:                                              ; preds = %162, %84, %78
  %164 = call i32 @xo_close_instance(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  ret void
}

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #1

declare dso_local i32 @xo_open_instance(i8*) #2

declare dso_local %struct.tm* @localtime(i32*) #2

declare dso_local i32 @strftime(i8*, i32, i8*, %struct.tm*) #2

declare dso_local i32 @xo_emit(i8*, ...) #2

declare dso_local i32 @xo_attr(i8*, i8*, i64) #2

declare dso_local i32 @ctf(i8*) #2

declare dso_local %struct.tm* @gmtime(i32*) #2

declare dso_local i32 @xo_close_instance(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
