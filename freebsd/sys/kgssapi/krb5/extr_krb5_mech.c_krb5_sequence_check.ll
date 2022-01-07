; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_krb5_mech.c_krb5_sequence_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/krb5/extr_krb5_mech.c_krb5_sequence_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_context = type { i32, %struct.krb5_msg_order }
%struct.krb5_msg_order = type { i32, i32, i64* }

@GSS_S_FAILURE = common dso_local global i32 0, align 4
@GSS_C_SEQUENCE_FLAG = common dso_local global i32 0, align 4
@GSS_C_REPLAY_FLAG = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i32 0, align 4
@GSS_S_GAP_TOKEN = common dso_local global i32 0, align 4
@GSS_S_OLD_TOKEN = common dso_local global i32 0, align 4
@GSS_S_UNSEQ_TOKEN = common dso_local global i32 0, align 4
@GSS_S_DUPLICATE_TOKEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.krb5_context*, i64)* @krb5_sequence_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @krb5_sequence_check(%struct.krb5_context* %0, i64 %1) #0 {
  %3 = alloca %struct.krb5_context*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.krb5_msg_order*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.krb5_context* %0, %struct.krb5_context** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.krb5_context*, %struct.krb5_context** %3, align 8
  %12 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %11, i32 0, i32 1
  store %struct.krb5_msg_order* %12, %struct.krb5_msg_order** %6, align 8
  %13 = load %struct.krb5_msg_order*, %struct.krb5_msg_order** %6, align 8
  %14 = getelementptr inbounds %struct.krb5_msg_order, %struct.krb5_msg_order* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @GSS_C_SEQUENCE_FLAG, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %7, align 4
  %18 = load %struct.krb5_msg_order*, %struct.krb5_msg_order** %6, align 8
  %19 = getelementptr inbounds %struct.krb5_msg_order, %struct.krb5_msg_order* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @GSS_C_REPLAY_FLAG, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %8, align 4
  %23 = load %struct.krb5_context*, %struct.krb5_context** %3, align 8
  %24 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %23, i32 0, i32 0
  %25 = call i32 @mtx_lock(i32* %24)
  %26 = load %struct.krb5_msg_order*, %struct.krb5_msg_order** %6, align 8
  %27 = getelementptr inbounds %struct.krb5_msg_order, %struct.krb5_msg_order* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %2
  %31 = load i64, i64* %4, align 8
  %32 = load %struct.krb5_msg_order*, %struct.krb5_msg_order** %6, align 8
  %33 = getelementptr inbounds %struct.krb5_msg_order, %struct.krb5_msg_order* %32, i32 0, i32 2
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1
  %38 = icmp eq i64 %31, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %30, %2
  %40 = load %struct.krb5_msg_order*, %struct.krb5_msg_order** %6, align 8
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @krb5_insert_seq(%struct.krb5_msg_order* %40, i64 %41, i32 0)
  %43 = load i32, i32* @GSS_S_COMPLETE, align 4
  store i32 %43, i32* %5, align 4
  br label %136

44:                                               ; preds = %30
  %45 = load i64, i64* %4, align 8
  %46 = load %struct.krb5_msg_order*, %struct.krb5_msg_order** %6, align 8
  %47 = getelementptr inbounds %struct.krb5_msg_order, %struct.krb5_msg_order* %46, i32 0, i32 2
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %45, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %44
  %53 = load %struct.krb5_msg_order*, %struct.krb5_msg_order** %6, align 8
  %54 = load i64, i64* %4, align 8
  %55 = call i32 @krb5_insert_seq(%struct.krb5_msg_order* %53, i64 %54, i32 0)
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* @GSS_S_GAP_TOKEN, align 4
  store i32 %59, i32* %5, align 4
  br label %62

60:                                               ; preds = %52
  %61 = load i32, i32* @GSS_S_COMPLETE, align 4
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %60, %58
  br label %136

63:                                               ; preds = %44
  %64 = load i64, i64* %4, align 8
  %65 = load %struct.krb5_msg_order*, %struct.krb5_msg_order** %6, align 8
  %66 = getelementptr inbounds %struct.krb5_msg_order, %struct.krb5_msg_order* %65, i32 0, i32 2
  %67 = load i64*, i64** %66, align 8
  %68 = load %struct.krb5_msg_order*, %struct.krb5_msg_order** %6, align 8
  %69 = getelementptr inbounds %struct.krb5_msg_order, %struct.krb5_msg_order* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %67, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = icmp slt i64 %64, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %63
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* @GSS_S_OLD_TOKEN, align 4
  store i32 %83, i32* %5, align 4
  br label %86

84:                                               ; preds = %79, %76
  %85 = load i32, i32* @GSS_S_UNSEQ_TOKEN, align 4
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %84, %82
  br label %136

87:                                               ; preds = %63
  store i32 0, i32* %9, align 4
  br label %88

88:                                               ; preds = %132, %87
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.krb5_msg_order*, %struct.krb5_msg_order** %6, align 8
  %91 = getelementptr inbounds %struct.krb5_msg_order, %struct.krb5_msg_order* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %135

94:                                               ; preds = %88
  %95 = load %struct.krb5_msg_order*, %struct.krb5_msg_order** %6, align 8
  %96 = getelementptr inbounds %struct.krb5_msg_order, %struct.krb5_msg_order* %95, i32 0, i32 2
  %97 = load i64*, i64** %96, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %4, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %94
  %105 = load i32, i32* @GSS_S_DUPLICATE_TOKEN, align 4
  store i32 %105, i32* %5, align 4
  br label %136

106:                                              ; preds = %94
  %107 = load %struct.krb5_msg_order*, %struct.krb5_msg_order** %6, align 8
  %108 = getelementptr inbounds %struct.krb5_msg_order, %struct.krb5_msg_order* %107, i32 0, i32 2
  %109 = load i64*, i64** %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %4, align 8
  %115 = icmp slt i64 %113, %114
  br i1 %115, label %116, label %131

116:                                              ; preds = %106
  %117 = load %struct.krb5_msg_order*, %struct.krb5_msg_order** %6, align 8
  %118 = load i64, i64* %4, align 8
  %119 = load i32, i32* %9, align 4
  %120 = call i32 @krb5_insert_seq(%struct.krb5_msg_order* %117, i64 %118, i32 %119)
  %121 = load i32, i32* %8, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %116
  %124 = load i32, i32* %7, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %123
  %127 = load i32, i32* @GSS_S_COMPLETE, align 4
  store i32 %127, i32* %5, align 4
  br label %130

128:                                              ; preds = %123, %116
  %129 = load i32, i32* @GSS_S_UNSEQ_TOKEN, align 4
  store i32 %129, i32* %5, align 4
  br label %130

130:                                              ; preds = %128, %126
  br label %136

131:                                              ; preds = %106
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %9, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %9, align 4
  br label %88

135:                                              ; preds = %88
  br label %136

136:                                              ; preds = %135, %130, %104, %86, %62, %39
  %137 = load %struct.krb5_context*, %struct.krb5_context** %3, align 8
  %138 = getelementptr inbounds %struct.krb5_context, %struct.krb5_context* %137, i32 0, i32 0
  %139 = call i32 @mtx_unlock(i32* %138)
  %140 = load i32, i32* %5, align 4
  ret i32 %140
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @krb5_insert_seq(%struct.krb5_msg_order*, i64, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
