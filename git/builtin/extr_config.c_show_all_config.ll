; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_config.c_show_all_config.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_config.c_show_all_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }

@show_origin = common dso_local global i64 0, align 8
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@stdout = common dso_local global i32 0, align 4
@omit_values = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s%c%s%c\00", align 1
@delim = common dso_local global i8* null, align 8
@term = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @show_all_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_all_config(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.strbuf, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i64, i64* @show_origin, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %3
  %11 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %12 = call i32 @show_config_origin(%struct.strbuf* %7)
  %13 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @stdout, align 4
  %18 = call i32 @fwrite(i32 %14, i32 1, i32 %16, i32 %17)
  %19 = call i32 @strbuf_release(%struct.strbuf* %7)
  br label %20

20:                                               ; preds = %10, %3
  %21 = load i32, i32* @omit_values, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %20
  %24 = load i8*, i8** %5, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i8*, i8** %4, align 8
  %28 = load i8*, i8** @delim, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* @term, align 4
  %31 = call i32 (i8*, i8*, i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %27, i8* %28, i8* %29, i32 %30)
  br label %38

32:                                               ; preds = %23, %20
  %33 = load i8*, i8** %4, align 8
  %34 = load i32, i32* @term, align 4
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i8*
  %37 = call i32 (i8*, i8*, i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %33, i8* %36)
  br label %38

38:                                               ; preds = %32, %26
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @show_config_origin(%struct.strbuf*) #2

declare dso_local i32 @fwrite(i32, i32, i32, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @printf(i8*, i8*, i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
