; ModuleID = '/home/carl/AnghaBench/git/extr_config.c_store_create_section.c'
source_filename = "/home/carl/AnghaBench/git/extr_config.c_store_create_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.config_store_data = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [8 x i8] c"[%.*s \22\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"\22]\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"[%.*s]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.config_store_data*)* @store_create_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_create_section(i8* %0, %struct.config_store_data* %1) #0 {
  %3 = alloca %struct.strbuf, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.config_store_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.config_store_data* %1, %struct.config_store_data** %5, align 8
  %8 = bitcast %struct.strbuf* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %9 = load i8*, i8** %4, align 8
  %10 = load %struct.config_store_data*, %struct.config_store_data** %5, align 8
  %11 = getelementptr inbounds %struct.config_store_data, %struct.config_store_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @memchr(i8* %9, i8 signext 46, i32 %12)
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %68

16:                                               ; preds = %2
  %17 = load i8*, i8** %6, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = ptrtoint i8* %17 to i64
  %20 = ptrtoint i8* %18 to i64
  %21 = sub i64 %19, %20
  %22 = trunc i64 %21 to i32
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @strbuf_addf(%struct.strbuf* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %22, i8* %23)
  %25 = load i8*, i8** %6, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = ptrtoint i8* %25 to i64
  %28 = ptrtoint i8* %26 to i64
  %29 = sub i64 %27, %28
  %30 = add nsw i64 %29, 1
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %63, %16
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.config_store_data*, %struct.config_store_data** %5, align 8
  %35 = getelementptr inbounds %struct.config_store_data, %struct.config_store_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %66

38:                                               ; preds = %32
  %39 = load i8*, i8** %4, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 34
  br i1 %45, label %54, label %46

46:                                               ; preds = %38
  %47 = load i8*, i8** %4, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 92
  br i1 %53, label %54, label %56

54:                                               ; preds = %46, %38
  %55 = call i32 @strbuf_addch(%struct.strbuf* %3, i8 signext 92)
  br label %56

56:                                               ; preds = %54, %46
  %57 = load i8*, i8** %4, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = call i32 @strbuf_addch(%struct.strbuf* %3, i8 signext %61)
  br label %63

63:                                               ; preds = %56
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %32

66:                                               ; preds = %32
  %67 = call i32 @strbuf_addstr(%struct.strbuf* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %74

68:                                               ; preds = %2
  %69 = load %struct.config_store_data*, %struct.config_store_data** %5, align 8
  %70 = getelementptr inbounds %struct.config_store_data, %struct.config_store_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i8*, i8** %4, align 8
  %73 = call i32 @strbuf_addf(%struct.strbuf* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %71, i8* %72)
  br label %74

74:                                               ; preds = %68, %66
  %75 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %3, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  ret i32 %76
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @memchr(i8*, i8 signext, i32) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32, i8*) #2

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
