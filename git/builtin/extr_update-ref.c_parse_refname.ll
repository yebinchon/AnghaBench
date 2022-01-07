; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_update-ref.c_parse_refname.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_update-ref.c_parse_refname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@line_termination = common dso_local global i64 0, align 8
@REFNAME_ALLOW_ONELEVEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"invalid ref format: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.strbuf*, i8**)* @parse_refname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_refname(%struct.strbuf* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.strbuf, align 4
  store %struct.strbuf* %0, %struct.strbuf** %4, align 8
  store i8** %1, i8*** %5, align 8
  %7 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %8 = load i64, i64* @line_termination, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i8**, i8*** %5, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = call i8* @parse_arg(i8* %12, %struct.strbuf* %6)
  %14 = load i8**, i8*** %5, align 8
  store i8* %13, i8** %14, align 8
  br label %25

15:                                               ; preds = %2
  %16 = load i8**, i8*** %5, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @strbuf_addstr(%struct.strbuf* %6, i8* %17)
  %19 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = sext i32 %20 to i64
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  store i8* %24, i8** %21, align 8
  br label %25

25:                                               ; preds = %15, %10
  %26 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = call i32 @strbuf_release(%struct.strbuf* %6)
  store i8* null, i8** %3, align 8
  br label %43

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @REFNAME_ALLOW_ONELEVEL, align 4
  %35 = call i64 @check_refname_format(i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @die(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %37, %31
  %42 = call i8* @strbuf_detach(%struct.strbuf* %6, i32* null)
  store i8* %42, i8** %3, align 8
  br label %43

43:                                               ; preds = %41, %29
  %44 = load i8*, i8** %3, align 8
  ret i8* %44
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @parse_arg(i8*, %struct.strbuf*) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i64 @check_refname_format(i32, i32) #2

declare dso_local i32 @die(i8*, i32) #2

declare dso_local i8* @strbuf_detach(%struct.strbuf*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
