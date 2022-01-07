; ModuleID = '/home/carl/AnghaBench/git/extr_config.c_write_pair.c'
source_filename = "/home/carl/AnghaBench/git/extr_config.c_write_pair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.config_store_data = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"\09%.*s = %s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*, %struct.config_store_data*)* @write_pair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_pair(i32 %0, i8* %1, i8* %2, %struct.config_store_data* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.config_store_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.strbuf, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.config_store_data* %3, %struct.config_store_data** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load %struct.config_store_data*, %struct.config_store_data** %8, align 8
  %16 = getelementptr inbounds %struct.config_store_data, %struct.config_store_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %14, i64 %18
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = call i32 @strlen(i8* %20)
  store i32 %21, i32* %11, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %22 = bitcast %struct.strbuf* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %23 = load i8*, i8** %7, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 32
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  br label %29

29:                                               ; preds = %28, %4
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %55, %29
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %37, label %58

37:                                               ; preds = %30
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 59
  br i1 %44, label %53, label %45

45:                                               ; preds = %37
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 35
  br i1 %52, label %53, label %54

53:                                               ; preds = %45, %37
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  br label %54

54:                                               ; preds = %53, %45
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %30

58:                                               ; preds = %30
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %58
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 32
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  br label %71

71:                                               ; preds = %70, %61, %58
  %72 = load i32, i32* %11, align 4
  %73 = load i8*, i8** %6, align 8
  %74 = load %struct.config_store_data*, %struct.config_store_data** %8, align 8
  %75 = getelementptr inbounds %struct.config_store_data, %struct.config_store_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %73, i64 %77
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = load i8*, i8** %12, align 8
  %81 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %72, i8* %79, i8* %80)
  store i32 0, i32* %9, align 4
  br label %82

82:                                               ; preds = %110, %71
  %83 = load i8*, i8** %7, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = icmp ne i8 %87, 0
  br i1 %88, label %89, label %113

89:                                               ; preds = %82
  %90 = load i8*, i8** %7, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  switch i32 %95, label %102 [
    i32 10, label %96
    i32 9, label %98
    i32 34, label %100
    i32 92, label %100
  ]

96:                                               ; preds = %89
  %97 = call i32 @strbuf_addstr(%struct.strbuf* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %109

98:                                               ; preds = %89
  %99 = call i32 @strbuf_addstr(%struct.strbuf* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %109

100:                                              ; preds = %89, %89
  %101 = call i32 @strbuf_addch(%struct.strbuf* %13, i8 signext 92)
  br label %102

102:                                              ; preds = %89, %100
  %103 = load i8*, i8** %7, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = call i32 @strbuf_addch(%struct.strbuf* %13, i8 signext %107)
  br label %109

109:                                              ; preds = %102, %98, %96
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %9, align 4
  br label %82

113:                                              ; preds = %82
  %114 = load i8*, i8** %12, align 8
  %115 = call i32 (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %114)
  %116 = load i32, i32* %5, align 4
  %117 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @write_in_full(i32 %116, i32 %118, i32 %120)
  store i32 %121, i32* %10, align 4
  %122 = call i32 @strbuf_release(%struct.strbuf* %13)
  %123 = load i32, i32* %10, align 4
  ret i32 %123
}

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, ...) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @write_in_full(i32, i32, i32) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
