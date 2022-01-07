; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/newsyslog/extr_newsyslog.c_init_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/newsyslog/extr_newsyslog.c_init_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conf_entry = type { i8*, i32, i32, i32, i32, i64, i32, i32, i64, i64, i32*, i64, i64, i64, i64, i32*, i32* }

@verbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"\09--> [creating entry for %s]\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"malloc of conf_entry for %s\00", align 1
@destdir = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"strdup for %s\00", align 1
@COMPRESS_NONE = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.conf_entry* (i8*, %struct.conf_entry*)* @init_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.conf_entry* @init_entry(i8* %0, %struct.conf_entry* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.conf_entry*, align 8
  %5 = alloca %struct.conf_entry*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.conf_entry* %1, %struct.conf_entry** %4, align 8
  %6 = load i32, i32* @verbose, align 4
  %7 = icmp sgt i32 %6, 4
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %9)
  br label %11

11:                                               ; preds = %8, %2
  %12 = call %struct.conf_entry* @malloc(i32 112)
  store %struct.conf_entry* %12, %struct.conf_entry** %5, align 8
  %13 = load %struct.conf_entry*, %struct.conf_entry** %5, align 8
  %14 = icmp eq %struct.conf_entry* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @err(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  br label %18

18:                                               ; preds = %15, %11
  %19 = load i32*, i32** @destdir, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = load i8*, i8** %3, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 47
  br i1 %26, label %27, label %33

27:                                               ; preds = %21, %18
  %28 = load i8*, i8** %3, align 8
  %29 = call i8* @strdup(i8* %28)
  %30 = bitcast i8* %29 to i32*
  %31 = load %struct.conf_entry*, %struct.conf_entry** %5, align 8
  %32 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %31, i32 0, i32 16
  store i32* %30, i32** %32, align 8
  br label %39

33:                                               ; preds = %21
  %34 = load %struct.conf_entry*, %struct.conf_entry** %5, align 8
  %35 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %34, i32 0, i32 16
  %36 = load i32*, i32** @destdir, align 8
  %37 = load i8*, i8** %3, align 8
  %38 = call i32 @asprintf(i32** %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %36, i8* %37)
  br label %39

39:                                               ; preds = %33, %27
  %40 = load %struct.conf_entry*, %struct.conf_entry** %5, align 8
  %41 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %40, i32 0, i32 16
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i8*, i8** %3, align 8
  %46 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %45)
  br label %47

47:                                               ; preds = %44, %39
  %48 = load %struct.conf_entry*, %struct.conf_entry** %4, align 8
  %49 = icmp ne %struct.conf_entry* %48, null
  br i1 %49, label %50, label %137

50:                                               ; preds = %47
  %51 = load %struct.conf_entry*, %struct.conf_entry** %5, align 8
  %52 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %51, i32 0, i32 0
  store i8* null, i8** %52, align 8
  %53 = load %struct.conf_entry*, %struct.conf_entry** %4, align 8
  %54 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %50
  %58 = load %struct.conf_entry*, %struct.conf_entry** %4, align 8
  %59 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i8* @strdup(i8* %60)
  %62 = load %struct.conf_entry*, %struct.conf_entry** %5, align 8
  %63 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  br label %64

64:                                               ; preds = %57, %50
  %65 = load %struct.conf_entry*, %struct.conf_entry** %5, align 8
  %66 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %65, i32 0, i32 15
  store i32* null, i32** %66, align 8
  %67 = load %struct.conf_entry*, %struct.conf_entry** %5, align 8
  %68 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %67, i32 0, i32 14
  store i64 0, i64* %68, align 8
  %69 = load %struct.conf_entry*, %struct.conf_entry** %5, align 8
  %70 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %69, i32 0, i32 13
  store i64 0, i64* %70, align 8
  %71 = load %struct.conf_entry*, %struct.conf_entry** %5, align 8
  %72 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %71, i32 0, i32 1
  store i32 -1, i32* %72, align 8
  %73 = load %struct.conf_entry*, %struct.conf_entry** %4, align 8
  %74 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %73, i32 0, i32 12
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.conf_entry*, %struct.conf_entry** %5, align 8
  %77 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %76, i32 0, i32 12
  store i64 %75, i64* %77, align 8
  %78 = load %struct.conf_entry*, %struct.conf_entry** %4, align 8
  %79 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %78, i32 0, i32 11
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.conf_entry*, %struct.conf_entry** %5, align 8
  %82 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %81, i32 0, i32 11
  store i64 %80, i64* %82, align 8
  %83 = load %struct.conf_entry*, %struct.conf_entry** %4, align 8
  %84 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.conf_entry*, %struct.conf_entry** %5, align 8
  %87 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 4
  %88 = load %struct.conf_entry*, %struct.conf_entry** %4, align 8
  %89 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.conf_entry*, %struct.conf_entry** %5, align 8
  %92 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 8
  %93 = load %struct.conf_entry*, %struct.conf_entry** %4, align 8
  %94 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.conf_entry*, %struct.conf_entry** %5, align 8
  %97 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %96, i32 0, i32 4
  store i32 %95, i32* %97, align 4
  %98 = load %struct.conf_entry*, %struct.conf_entry** %5, align 8
  %99 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %98, i32 0, i32 10
  store i32* null, i32** %99, align 8
  %100 = load %struct.conf_entry*, %struct.conf_entry** %4, align 8
  %101 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %100, i32 0, i32 10
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %111

104:                                              ; preds = %64
  %105 = load %struct.conf_entry*, %struct.conf_entry** %4, align 8
  %106 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %105, i32 0, i32 10
  %107 = load i32*, i32** %106, align 8
  %108 = call i32* @ptime_init(i32* %107)
  %109 = load %struct.conf_entry*, %struct.conf_entry** %5, align 8
  %110 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %109, i32 0, i32 10
  store i32* %108, i32** %110, align 8
  br label %111

111:                                              ; preds = %104, %64
  %112 = load %struct.conf_entry*, %struct.conf_entry** %4, align 8
  %113 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %112, i32 0, i32 9
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.conf_entry*, %struct.conf_entry** %5, align 8
  %116 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %115, i32 0, i32 9
  store i64 %114, i64* %116, align 8
  %117 = load %struct.conf_entry*, %struct.conf_entry** %4, align 8
  %118 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %117, i32 0, i32 8
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.conf_entry*, %struct.conf_entry** %5, align 8
  %121 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %120, i32 0, i32 8
  store i64 %119, i64* %121, align 8
  %122 = load %struct.conf_entry*, %struct.conf_entry** %4, align 8
  %123 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %122, i32 0, i32 7
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.conf_entry*, %struct.conf_entry** %5, align 8
  %126 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %125, i32 0, i32 7
  store i32 %124, i32* %126, align 4
  %127 = load %struct.conf_entry*, %struct.conf_entry** %4, align 8
  %128 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %127, i32 0, i32 6
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.conf_entry*, %struct.conf_entry** %5, align 8
  %131 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %130, i32 0, i32 6
  store i32 %129, i32* %131, align 8
  %132 = load %struct.conf_entry*, %struct.conf_entry** %4, align 8
  %133 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %132, i32 0, i32 5
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.conf_entry*, %struct.conf_entry** %5, align 8
  %136 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %135, i32 0, i32 5
  store i64 %134, i64* %136, align 8
  br label %172

137:                                              ; preds = %47
  %138 = load %struct.conf_entry*, %struct.conf_entry** %5, align 8
  %139 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %138, i32 0, i32 0
  store i8* null, i8** %139, align 8
  %140 = load %struct.conf_entry*, %struct.conf_entry** %5, align 8
  %141 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %140, i32 0, i32 15
  store i32* null, i32** %141, align 8
  %142 = load %struct.conf_entry*, %struct.conf_entry** %5, align 8
  %143 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %142, i32 0, i32 14
  store i64 0, i64* %143, align 8
  %144 = load %struct.conf_entry*, %struct.conf_entry** %5, align 8
  %145 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %144, i32 0, i32 13
  store i64 0, i64* %145, align 8
  %146 = load %struct.conf_entry*, %struct.conf_entry** %5, align 8
  %147 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %146, i32 0, i32 1
  store i32 -1, i32* %147, align 8
  %148 = load %struct.conf_entry*, %struct.conf_entry** %5, align 8
  %149 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %148, i32 0, i32 12
  store i64 -1, i64* %149, align 8
  %150 = load %struct.conf_entry*, %struct.conf_entry** %5, align 8
  %151 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %150, i32 0, i32 11
  store i64 -1, i64* %151, align 8
  %152 = load %struct.conf_entry*, %struct.conf_entry** %5, align 8
  %153 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %152, i32 0, i32 2
  store i32 1, i32* %153, align 4
  %154 = load %struct.conf_entry*, %struct.conf_entry** %5, align 8
  %155 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %154, i32 0, i32 3
  store i32 -1, i32* %155, align 8
  %156 = load %struct.conf_entry*, %struct.conf_entry** %5, align 8
  %157 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %156, i32 0, i32 4
  store i32 -1, i32* %157, align 4
  %158 = load %struct.conf_entry*, %struct.conf_entry** %5, align 8
  %159 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %158, i32 0, i32 10
  store i32* null, i32** %159, align 8
  %160 = load %struct.conf_entry*, %struct.conf_entry** %5, align 8
  %161 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %160, i32 0, i32 9
  store i64 0, i64* %161, align 8
  %162 = load %struct.conf_entry*, %struct.conf_entry** %5, align 8
  %163 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %162, i32 0, i32 8
  store i64 0, i64* %163, align 8
  %164 = load i32, i32* @COMPRESS_NONE, align 4
  %165 = load %struct.conf_entry*, %struct.conf_entry** %5, align 8
  %166 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %165, i32 0, i32 7
  store i32 %164, i32* %166, align 4
  %167 = load i32, i32* @SIGHUP, align 4
  %168 = load %struct.conf_entry*, %struct.conf_entry** %5, align 8
  %169 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %168, i32 0, i32 6
  store i32 %167, i32* %169, align 8
  %170 = load %struct.conf_entry*, %struct.conf_entry** %5, align 8
  %171 = getelementptr inbounds %struct.conf_entry, %struct.conf_entry* %170, i32 0, i32 5
  store i64 0, i64* %171, align 8
  br label %172

172:                                              ; preds = %137, %111
  %173 = load %struct.conf_entry*, %struct.conf_entry** %5, align 8
  ret %struct.conf_entry* %173
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local %struct.conf_entry* @malloc(i32) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @asprintf(i32**, i8*, i32*, i8*) #1

declare dso_local i32* @ptime_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
