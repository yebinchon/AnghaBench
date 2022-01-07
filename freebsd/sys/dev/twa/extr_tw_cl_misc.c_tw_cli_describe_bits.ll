; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_misc.c_tw_cli_describe_bits.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_misc.c_tw_cli_describe_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"[\00", align 1
@TWA_STATUS_COMMAND_QUEUE_EMPTY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"CMD_Q_EMPTY,\00", align 1
@TWA_STATUS_MICROCONTROLLER_READY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"MC_RDY,\00", align 1
@TWA_STATUS_RESPONSE_QUEUE_EMPTY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"RESP_Q_EMPTY,\00", align 1
@TWA_STATUS_COMMAND_QUEUE_FULL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"CMD_Q_FULL,\00", align 1
@TWA_STATUS_RESPONSE_INTERRUPT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"RESP_INTR,\00", align 1
@TWA_STATUS_COMMAND_INTERRUPT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"CMD_INTR,\00", align 1
@TWA_STATUS_ATTENTION_INTERRUPT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"ATTN_INTR,\00", align 1
@TWA_STATUS_HOST_INTERRUPT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"HOST_INTR,\00", align 1
@TWA_STATUS_PCI_ABORT_INTERRUPT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"PCI_ABRT,\00", align 1
@TWA_STATUS_QUEUE_ERROR_INTERRUPT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"Q_ERR,\00", align 1
@TWA_STATUS_PCI_PARITY_ERROR_INTERRUPT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [9 x i8] c"PCI_PERR\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @tw_cli_describe_bits(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  %6 = call i32 @tw_osl_strcpy(i32* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @TWA_STATUS_COMMAND_QUEUE_EMPTY, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i64 @tw_osl_strlen(i32* %13)
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = call i32 @tw_osl_strcpy(i32* %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %11, %2
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @TWA_STATUS_MICROCONTROLLER_READY, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load i32*, i32** %4, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i64 @tw_osl_strlen(i32* %24)
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = call i32 @tw_osl_strcpy(i32* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %28

28:                                               ; preds = %22, %17
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @TWA_STATUS_RESPONSE_QUEUE_EMPTY, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i32*, i32** %4, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = call i64 @tw_osl_strlen(i32* %35)
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = call i32 @tw_osl_strcpy(i32* %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %39

39:                                               ; preds = %33, %28
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @TWA_STATUS_COMMAND_QUEUE_FULL, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i32*, i32** %4, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = call i64 @tw_osl_strlen(i32* %46)
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = call i32 @tw_osl_strcpy(i32* %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %50

50:                                               ; preds = %44, %39
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @TWA_STATUS_RESPONSE_INTERRUPT, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load i32*, i32** %4, align 8
  %57 = load i32*, i32** %4, align 8
  %58 = call i64 @tw_osl_strlen(i32* %57)
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = call i32 @tw_osl_strcpy(i32* %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  br label %61

61:                                               ; preds = %55, %50
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @TWA_STATUS_COMMAND_INTERRUPT, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load i32*, i32** %4, align 8
  %68 = load i32*, i32** %4, align 8
  %69 = call i64 @tw_osl_strlen(i32* %68)
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = call i32 @tw_osl_strcpy(i32* %70, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %72

72:                                               ; preds = %66, %61
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* @TWA_STATUS_ATTENTION_INTERRUPT, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load i32*, i32** %4, align 8
  %79 = load i32*, i32** %4, align 8
  %80 = call i64 @tw_osl_strlen(i32* %79)
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = call i32 @tw_osl_strcpy(i32* %81, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  br label %83

83:                                               ; preds = %77, %72
  %84 = load i32, i32* %3, align 4
  %85 = load i32, i32* @TWA_STATUS_HOST_INTERRUPT, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load i32*, i32** %4, align 8
  %90 = load i32*, i32** %4, align 8
  %91 = call i64 @tw_osl_strlen(i32* %90)
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = call i32 @tw_osl_strcpy(i32* %92, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  br label %94

94:                                               ; preds = %88, %83
  %95 = load i32, i32* %3, align 4
  %96 = load i32, i32* @TWA_STATUS_PCI_ABORT_INTERRUPT, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = load i32*, i32** %4, align 8
  %101 = load i32*, i32** %4, align 8
  %102 = call i64 @tw_osl_strlen(i32* %101)
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = call i32 @tw_osl_strcpy(i32* %103, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  br label %105

105:                                              ; preds = %99, %94
  %106 = load i32, i32* %3, align 4
  %107 = load i32, i32* @TWA_STATUS_QUEUE_ERROR_INTERRUPT, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %105
  %111 = load i32*, i32** %4, align 8
  %112 = load i32*, i32** %4, align 8
  %113 = call i64 @tw_osl_strlen(i32* %112)
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = call i32 @tw_osl_strcpy(i32* %114, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  br label %116

116:                                              ; preds = %110, %105
  %117 = load i32, i32* %3, align 4
  %118 = load i32, i32* @TWA_STATUS_PCI_PARITY_ERROR_INTERRUPT, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %116
  %122 = load i32*, i32** %4, align 8
  %123 = load i32*, i32** %4, align 8
  %124 = call i64 @tw_osl_strlen(i32* %123)
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = call i32 @tw_osl_strcpy(i32* %125, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  br label %127

127:                                              ; preds = %121, %116
  %128 = load i32*, i32** %4, align 8
  %129 = load i32*, i32** %4, align 8
  %130 = call i64 @tw_osl_strlen(i32* %129)
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = call i32 @tw_osl_strcpy(i32* %131, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %133 = load i32*, i32** %4, align 8
  ret i32* %133
}

declare dso_local i32 @tw_osl_strcpy(i32*, i8*) #1

declare dso_local i64 @tw_osl_strlen(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
