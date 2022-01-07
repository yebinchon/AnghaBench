; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/xenstore/extr_xenstore.c_xs_rm_tree.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/xenstore/extr_xenstore.c_xs_rm_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xs_transaction = type { i64 }
%struct.sbuf = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENOTEMPTY = common dso_local global i32 0, align 4
@M_XENSTORE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"xs_rm_tree: mangled path %s\00", align 1
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xs_rm_tree(i64 %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.xs_transaction, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.xs_transaction, align 8
  %8 = alloca %struct.sbuf*, align 8
  %9 = alloca %struct.sbuf*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.sbuf*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = getelementptr inbounds %struct.xs_transaction, %struct.xs_transaction* %4, i32 0, i32 0
  store i64 %0, i64* %19, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  br label %20

20:                                               ; preds = %151, %3
  %21 = load i8*, i8** %5, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call %struct.sbuf* @xs_join(i8* %21, i8* %22)
  store %struct.sbuf* %23, %struct.sbuf** %8, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call %struct.sbuf* @xs_join(i8* %24, i8* %25)
  store %struct.sbuf* %26, %struct.sbuf** %9, align 8
  %27 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %28 = call i8* @sbuf_data(%struct.sbuf* %27)
  store i8* %28, i8** %10, align 8
  %29 = load %struct.sbuf*, %struct.sbuf** %9, align 8
  %30 = call i8* @sbuf_data(%struct.sbuf* %29)
  store i8* %30, i8** %11, align 8
  store i8** null, i8*** %12, align 8
  %31 = getelementptr inbounds %struct.xs_transaction, %struct.xs_transaction* %7, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = getelementptr inbounds %struct.xs_transaction, %struct.xs_transaction* %4, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %20
  %36 = call i32 @xs_transaction_start(%struct.xs_transaction* %7)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %122

40:                                               ; preds = %35
  %41 = bitcast %struct.xs_transaction* %4 to i8*
  %42 = bitcast %struct.xs_transaction* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 8, i1 false)
  br label %43

43:                                               ; preds = %40, %20
  br label %44

44:                                               ; preds = %43, %120
  %45 = load i8*, i8** %11, align 8
  %46 = getelementptr inbounds %struct.xs_transaction, %struct.xs_transaction* %4, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @xs_directory(i64 %47, i8* %45, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64* %14, i8*** %12)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %122

52:                                               ; preds = %44
  store i64 0, i64* %15, align 8
  br label %53

53:                                               ; preds = %87, %52
  %54 = load i64, i64* %15, align 8
  %55 = load i64, i64* %14, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %90

57:                                               ; preds = %53
  %58 = load i8*, i8** %11, align 8
  %59 = load i8**, i8*** %12, align 8
  %60 = load i64, i64* %15, align 8
  %61 = getelementptr inbounds i8*, i8** %59, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds %struct.xs_transaction, %struct.xs_transaction* %4, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @xs_rm(i64 %64, i8* %58, i8* %62)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* @ENOTEMPTY, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %57
  %70 = load i8*, i8** %11, align 8
  %71 = load i8**, i8*** %12, align 8
  %72 = load i64, i64* %15, align 8
  %73 = getelementptr inbounds i8*, i8** %71, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = call %struct.sbuf* @xs_join(i8* %70, i8* %74)
  store %struct.sbuf* %75, %struct.sbuf** %16, align 8
  %76 = load %struct.sbuf*, %struct.sbuf** %9, align 8
  %77 = call i32 @sbuf_delete(%struct.sbuf* %76)
  %78 = load %struct.sbuf*, %struct.sbuf** %16, align 8
  store %struct.sbuf* %78, %struct.sbuf** %9, align 8
  %79 = load %struct.sbuf*, %struct.sbuf** %9, align 8
  %80 = call i8* @sbuf_data(%struct.sbuf* %79)
  store i8* %80, i8** %11, align 8
  br label %90

81:                                               ; preds = %57
  %82 = load i32, i32* %13, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  br label %122

85:                                               ; preds = %81
  br label %86

86:                                               ; preds = %85
  br label %87

87:                                               ; preds = %86
  %88 = load i64, i64* %15, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %15, align 8
  br label %53

90:                                               ; preds = %69, %53
  %91 = load i8**, i8*** %12, align 8
  %92 = load i32, i32* @M_XENSTORE, align 4
  %93 = call i32 @free(i8** %91, i32 %92)
  store i8** null, i8*** %12, align 8
  %94 = load i64, i64* %15, align 8
  %95 = load i64, i64* %14, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %120

97:                                               ; preds = %90
  %98 = load i8*, i8** %11, align 8
  %99 = getelementptr inbounds %struct.xs_transaction, %struct.xs_transaction* %4, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @xs_rm(i64 %100, i8* %98, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %13, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  br label %122

105:                                              ; preds = %97
  %106 = load i8*, i8** %11, align 8
  %107 = load i8*, i8** %10, align 8
  %108 = call i32 @strcmp(i8* %106, i8* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %105
  br label %121

111:                                              ; preds = %105
  %112 = load i8*, i8** %11, align 8
  %113 = call i8* @strrchr(i8* %112, i8 signext 47)
  store i8* %113, i8** %17, align 8
  %114 = load i8*, i8** %17, align 8
  %115 = icmp ne i8* %114, null
  %116 = zext i1 %115 to i32
  %117 = load i8*, i8** %11, align 8
  %118 = call i32 @KASSERT(i32 %116, i8* %117)
  %119 = load i8*, i8** %17, align 8
  store i8 0, i8* %119, align 1
  br label %120

120:                                              ; preds = %111, %90
  br label %44

121:                                              ; preds = %110
  br label %122

122:                                              ; preds = %121, %104, %84, %51, %39
  %123 = load %struct.sbuf*, %struct.sbuf** %9, align 8
  %124 = call i32 @sbuf_delete(%struct.sbuf* %123)
  %125 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %126 = call i32 @sbuf_delete(%struct.sbuf* %125)
  %127 = load i8**, i8*** %12, align 8
  %128 = icmp ne i8** %127, null
  br i1 %128, label %129, label %133

129:                                              ; preds = %122
  %130 = load i8**, i8*** %12, align 8
  %131 = load i32, i32* @M_XENSTORE, align 4
  %132 = call i32 @free(i8** %130, i32 %131)
  br label %133

133:                                              ; preds = %129, %122
  %134 = getelementptr inbounds %struct.xs_transaction, %struct.xs_transaction* %7, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %153

137:                                              ; preds = %133
  %138 = load i32, i32* %13, align 4
  %139 = icmp ne i32 %138, 0
  %140 = zext i1 %139 to i32
  %141 = getelementptr inbounds %struct.xs_transaction, %struct.xs_transaction* %7, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @xs_transaction_end(i64 %142, i32 %140)
  store i32 %143, i32* %18, align 4
  %144 = getelementptr inbounds %struct.xs_transaction, %struct.xs_transaction* %4, i32 0, i32 0
  store i64 0, i64* %144, align 8
  %145 = load i32, i32* %18, align 4
  %146 = load i32, i32* @EAGAIN, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %152

148:                                              ; preds = %137
  %149 = load i32, i32* %13, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  br label %20

152:                                              ; preds = %148, %137
  br label %153

153:                                              ; preds = %152, %133
  %154 = load i32, i32* %13, align 4
  ret i32 %154
}

declare dso_local %struct.sbuf* @xs_join(i8*, i8*) #1

declare dso_local i8* @sbuf_data(%struct.sbuf*) #1

declare dso_local i32 @xs_transaction_start(%struct.xs_transaction*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @xs_directory(i64, i8*, i8*, i64*, i8***) #1

declare dso_local i32 @xs_rm(i64, i8*, i8*) #1

declare dso_local i32 @sbuf_delete(%struct.sbuf*) #1

declare dso_local i32 @free(i8**, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @xs_transaction_end(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
