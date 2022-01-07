; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcpl_calltree.c_pmcpl_ct_node_printchild.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstat/extr_pmcpl_calltree.c_pmcpl_ct_node_printchild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.pmcpl_ct_node = type { i32, i64, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_7__*, i32, i32, i64 }
%struct.TYPE_6__ = type { i32, i32, %struct.pmcpl_ct_node* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i64, i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@args = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str = private unnamed_addr constant [8 x i8] c"cob=%s\0A\00", align 1
@PMCPL_PCT_NAME = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"cfi=%s\0Acfn=%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"cfi=???\0Acfn=%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"cfi=???\0Acfn=%p\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"calls=%u %p %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%p %u\00", align 1
@pmcstat_npmcs = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c" %u\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmcpl_ct_node*, i64, i32)* @pmcpl_ct_node_printchild to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmcpl_ct_node_printchild(%struct.pmcpl_ct_node* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.pmcpl_ct_node*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.pmcpl_ct_node*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.pmcpl_ct_node* %0, %struct.pmcpl_ct_node** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* @PATH_MAX, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %12, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %13, align 8
  %19 = load i32, i32* @PATH_MAX, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %14, align 8
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %144, %3
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %4, align 8
  %25 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %147

28:                                               ; preds = %22
  %29 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %4, align 8
  %30 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %29, i32 0, i32 2
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  %36 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %35, align 8
  store %struct.pmcpl_ct_node* %36, %struct.pmcpl_ct_node** %11, align 8
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 0), align 4
  %38 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %11, align 8
  %39 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %38, i32 0, i32 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i8* @pmcstat_string_unintern(i32 %42)
  %44 = call i32 (i32, i8*, ...) @fprintf(i32 %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %43)
  %45 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %11, align 8
  %46 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %45, i32 0, i32 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %11, align 8
  %51 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %50, i32 0, i32 7
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %49, %52
  store i64 %53, i64* %10, align 8
  store i32 0, i32* %9, align 4
  %54 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %11, align 8
  %55 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @PMCPL_PCT_NAME, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %28
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 0), align 4
  %61 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %11, align 8
  %62 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @pmcstat_string_unintern(i32 %63)
  %65 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %11, align 8
  %66 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = call i8* @pmcstat_string_unintern(i32 %67)
  %69 = call i32 (i32, i8*, ...) @fprintf(i32 %60, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %64, i8* %68)
  br label %103

70:                                               ; preds = %28
  %71 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %11, align 8
  %72 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %71, i32 0, i32 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = load i64, i64* %10, align 8
  %75 = trunc i64 %16 to i32
  %76 = trunc i64 %20 to i32
  %77 = call i64 @pmcstat_image_addr2line(%struct.TYPE_7__* %73, i64 %74, i8* %18, i32 %75, i32* %9, i8* %21, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %70
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 0), align 4
  %81 = call i32 (i32, i8*, ...) @fprintf(i32 %80, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %18, i8* %21)
  br label %102

82:                                               ; preds = %70
  %83 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %11, align 8
  %84 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %83, i32 0, i32 3
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = icmp ne %struct.TYPE_5__* %85, null
  br i1 %86, label %87, label %96

87:                                               ; preds = %82
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 0), align 4
  %89 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %11, align 8
  %90 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %89, i32 0, i32 3
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i8* @pmcstat_string_unintern(i32 %93)
  %95 = call i32 (i32, i8*, ...) @fprintf(i32 %88, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %94)
  br label %101

96:                                               ; preds = %82
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 0), align 4
  %98 = load i64, i64* %10, align 8
  %99 = inttoptr i64 %98 to i8*
  %100 = call i32 (i32, i8*, ...) @fprintf(i32 %97, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %99)
  br label %101

101:                                              ; preds = %96, %87
  br label %102

102:                                              ; preds = %101, %79
  br label %103

103:                                              ; preds = %102, %59
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 0), align 4
  %105 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %4, align 8
  %106 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %105, i32 0, i32 2
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i64, i64* %10, align 8
  %114 = inttoptr i64 %113 to i8*
  %115 = load i32, i32* %9, align 4
  %116 = call i32 (i32, i8*, ...) @fprintf(i32 %104, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %112, i8* %114, i32 %115)
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 0), align 4
  %118 = load i64, i64* %5, align 8
  %119 = inttoptr i64 %118 to i8*
  %120 = load i32, i32* %6, align 4
  %121 = call i32 (i32, i8*, ...) @fprintf(i32 %117, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %119, i32 %120)
  store i32 0, i32* %8, align 4
  br label %122

122:                                              ; preds = %138, %103
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* @pmcstat_npmcs, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %141

126:                                              ; preds = %122
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 0), align 4
  %128 = load i32, i32* %8, align 4
  %129 = load %struct.pmcpl_ct_node*, %struct.pmcpl_ct_node** %4, align 8
  %130 = getelementptr inbounds %struct.pmcpl_ct_node, %struct.pmcpl_ct_node* %129, i32 0, i32 2
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  %136 = call i32 @PMCPL_CT_SAMPLE(i32 %128, i32* %135)
  %137 = call i32 (i32, i8*, ...) @fprintf(i32 %127, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %136)
  br label %138

138:                                              ; preds = %126
  %139 = load i32, i32* %8, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %8, align 4
  br label %122

141:                                              ; preds = %122
  %142 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 0), align 4
  %143 = call i32 (i32, i8*, ...) @fprintf(i32 %142, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %144

144:                                              ; preds = %141
  %145 = load i32, i32* %7, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %7, align 4
  br label %22

147:                                              ; preds = %22
  %148 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %148)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i8* @pmcstat_string_unintern(i32) #2

declare dso_local i64 @pmcstat_image_addr2line(%struct.TYPE_7__*, i64, i8*, i32, i32*, i8*, i32) #2

declare dso_local i32 @PMCPL_CT_SAMPLE(i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
