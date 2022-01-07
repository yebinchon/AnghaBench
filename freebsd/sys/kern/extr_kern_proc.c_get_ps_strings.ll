; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_proc.c_get_ps_strings.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_proc.c_get_ps_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.proc = type { i32 }
%struct.sbuf = type { i32 }

@GET_PS_STRINGS_CHUNK_SZ = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@ARG_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@M_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.proc*, %struct.sbuf*, i32)* @get_ps_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ps_strings(%struct.thread* %0, %struct.proc* %1, %struct.sbuf* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.proc*, align 8
  %8 = alloca %struct.sbuf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8**, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store %struct.proc* %1, %struct.proc** %7, align 8
  store %struct.sbuf* %2, %struct.sbuf** %8, align 8
  store i32 %3, i32* %9, align 4
  %21 = load i32, i32* @GET_PS_STRINGS_CHUNK_SZ, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %18, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %19, align 8
  %25 = load %struct.proc*, %struct.proc** %7, align 8
  %26 = call i32 @PROC_ASSERT_HELD(%struct.proc* %25)
  %27 = load i32, i32* @PATH_MAX, align 4
  %28 = load i32, i32* @ARG_MAX, align 4
  %29 = add nsw i32 %27, %28
  %30 = mul nsw i32 2, %29
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %12, align 8
  %32 = load %struct.thread*, %struct.thread** %6, align 8
  %33 = load %struct.proc*, %struct.proc** %7, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @get_proc_vector(%struct.thread* %32, %struct.proc* %33, i8*** %16, i64* %13, i32 %34)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %4
  %39 = load i32, i32* %14, align 4
  store i32 %39, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %124

40:                                               ; preds = %4
  store i64 0, i64* %10, align 8
  store i32 0, i32* %15, align 4
  br label %41

41:                                               ; preds = %115, %40
  %42 = load i32, i32* %15, align 4
  %43 = load i64, i64* %13, align 8
  %44 = trunc i64 %43 to i32
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* %12, align 8
  %49 = icmp ult i64 %47, %48
  br label %50

50:                                               ; preds = %46, %41
  %51 = phi i1 [ false, %41 ], [ %49, %46 ]
  br i1 %51, label %52, label %118

52:                                               ; preds = %50
  %53 = load i8**, i8*** %16, align 8
  %54 = load i32, i32* %15, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %118

60:                                               ; preds = %52
  %61 = load i8**, i8*** %16, align 8
  %62 = load i32, i32* %15, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %17, align 8
  br label %66

66:                                               ; preds = %103, %60
  %67 = load %struct.thread*, %struct.thread** %6, align 8
  %68 = load %struct.proc*, %struct.proc** %7, align 8
  %69 = load i8*, i8** %17, align 8
  %70 = trunc i64 %22 to i32
  %71 = call i32 @proc_read_string(%struct.thread* %67, %struct.proc* %68, i8* %69, i8* %24, i32 %70)
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %119

75:                                               ; preds = %66
  %76 = load i32, i32* @GET_PS_STRINGS_CHUNK_SZ, align 4
  %77 = call i64 @strnlen(i8* %24, i32 %76)
  store i64 %77, i64* %11, align 8
  %78 = load i64, i64* %10, align 8
  %79 = load i64, i64* %11, align 8
  %80 = add i64 %78, %79
  %81 = load i64, i64* %12, align 8
  %82 = icmp uge i64 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %75
  %84 = load i64, i64* %12, align 8
  %85 = load i64, i64* %10, align 8
  %86 = sub i64 %84, %85
  %87 = sub i64 %86, 1
  store i64 %87, i64* %11, align 8
  br label %88

88:                                               ; preds = %83, %75
  %89 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %90 = load i64, i64* %11, align 8
  %91 = trunc i64 %90 to i32
  %92 = call i32 @sbuf_bcat(%struct.sbuf* %89, i8* %24, i32 %91)
  %93 = load i64, i64* %11, align 8
  %94 = load i32, i32* @GET_PS_STRINGS_CHUNK_SZ, align 4
  %95 = sext i32 %94 to i64
  %96 = icmp ne i64 %93, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %88
  br label %108

98:                                               ; preds = %88
  %99 = load i32, i32* @GET_PS_STRINGS_CHUNK_SZ, align 4
  %100 = sext i32 %99 to i64
  %101 = load i64, i64* %10, align 8
  %102 = add i64 %101, %100
  store i64 %102, i64* %10, align 8
  br label %103

103:                                              ; preds = %98
  %104 = load i32, i32* @GET_PS_STRINGS_CHUNK_SZ, align 4
  %105 = load i8*, i8** %17, align 8
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  store i8* %107, i8** %17, align 8
  br label %66

108:                                              ; preds = %97
  %109 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %110 = call i32 @sbuf_bcat(%struct.sbuf* %109, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 1)
  %111 = load i64, i64* %11, align 8
  %112 = add i64 %111, 1
  %113 = load i64, i64* %10, align 8
  %114 = add i64 %113, %112
  store i64 %114, i64* %10, align 8
  br label %115

115:                                              ; preds = %108
  %116 = load i32, i32* %15, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %15, align 4
  br label %41

118:                                              ; preds = %59, %50
  br label %119

119:                                              ; preds = %118, %74
  %120 = load i8**, i8*** %16, align 8
  %121 = load i32, i32* @M_TEMP, align 4
  %122 = call i32 @free(i8** %120, i32 %121)
  %123 = load i32, i32* %14, align 4
  store i32 %123, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %124

124:                                              ; preds = %119, %38
  %125 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %125)
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @PROC_ASSERT_HELD(%struct.proc*) #2

declare dso_local i32 @get_proc_vector(%struct.thread*, %struct.proc*, i8***, i64*, i32) #2

declare dso_local i32 @proc_read_string(%struct.thread*, %struct.proc*, i8*, i8*, i32) #2

declare dso_local i64 @strnlen(i8*, i32) #2

declare dso_local i32 @sbuf_bcat(%struct.sbuf*, i8*, i32) #2

declare dso_local i32 @free(i8**, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
