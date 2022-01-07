; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_report.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.command = type { i32, i32, %struct.command* }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [11 x i8] c"unpack %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ok %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"ng %s %s\0A\00", align 1
@use_sideband = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.command*, i8*)* @report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @report(%struct.command* %0, i8* %1) #0 {
  %3 = alloca %struct.command*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.command*, align 8
  %6 = alloca %struct.strbuf, align 4
  store %struct.command* %0, %struct.command** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %8 = load i8*, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  br label %13

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %12, %10
  %14 = phi i8* [ %11, %10 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %12 ]
  %15 = call i32 (%struct.strbuf*, i8*, i8*, ...) @packet_buf_write(%struct.strbuf* %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load %struct.command*, %struct.command** %3, align 8
  store %struct.command* %16, %struct.command** %5, align 8
  br label %17

17:                                               ; preds = %43, %13
  %18 = load %struct.command*, %struct.command** %5, align 8
  %19 = icmp ne %struct.command* %18, null
  br i1 %19, label %20, label %47

20:                                               ; preds = %17
  %21 = load %struct.command*, %struct.command** %5, align 8
  %22 = getelementptr inbounds %struct.command, %struct.command* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %20
  %26 = load %struct.command*, %struct.command** %5, align 8
  %27 = getelementptr inbounds %struct.command, %struct.command* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i8*
  %31 = call i32 (%struct.strbuf*, i8*, i8*, ...) @packet_buf_write(%struct.strbuf* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %30)
  br label %42

32:                                               ; preds = %20
  %33 = load %struct.command*, %struct.command** %5, align 8
  %34 = getelementptr inbounds %struct.command, %struct.command* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i8*
  %38 = load %struct.command*, %struct.command** %5, align 8
  %39 = getelementptr inbounds %struct.command, %struct.command* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (%struct.strbuf*, i8*, i8*, ...) @packet_buf_write(%struct.strbuf* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %37, i32 %40)
  br label %42

42:                                               ; preds = %32, %25
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.command*, %struct.command** %5, align 8
  %45 = getelementptr inbounds %struct.command, %struct.command* %44, i32 0, i32 2
  %46 = load %struct.command*, %struct.command** %45, align 8
  store %struct.command* %46, %struct.command** %5, align 8
  br label %17

47:                                               ; preds = %17
  %48 = call i32 @packet_buf_flush(%struct.strbuf* %6)
  %49 = load i64, i64* @use_sideband, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i64, i64* @use_sideband, align 8
  %57 = call i32 @send_sideband(i32 1, i32 1, i32 %53, i32 %55, i64 %56)
  br label %64

58:                                               ; preds = %47
  %59 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @write_or_die(i32 1, i32 %60, i32 %62)
  br label %64

64:                                               ; preds = %58, %51
  %65 = call i32 @strbuf_release(%struct.strbuf* %6)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @packet_buf_write(%struct.strbuf*, i8*, i8*, ...) #2

declare dso_local i32 @packet_buf_flush(%struct.strbuf*) #2

declare dso_local i32 @send_sideband(i32, i32, i32, i32, i64) #2

declare dso_local i32 @write_or_die(i32, i32, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
