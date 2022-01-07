; ModuleID = '/home/carl/AnghaBench/git/extr_cache-tree.c_verify_cache.c'
source_filename = "/home/carl/AnghaBench/git/extr_cache-tree.c_verify_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i8*, i32 }

@WRITE_TREE_SILENT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"...\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%s: unmerged (%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"You have both %s and %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_entry**, i32, i32)* @verify_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_cache(%struct.cache_entry** %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cache_entry**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.cache_entry*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.cache_entry** %0, %struct.cache_entry*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @WRITE_TREE_SILENT, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %10, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %52, %3
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %55

22:                                               ; preds = %18
  %23 = load %struct.cache_entry**, %struct.cache_entry*** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %23, i64 %25
  %27 = load %struct.cache_entry*, %struct.cache_entry** %26, align 8
  store %struct.cache_entry* %27, %struct.cache_entry** %11, align 8
  %28 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %29 = call i64 @ce_stage(%struct.cache_entry* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %22
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 -1, i32* %4, align 4
  br label %122

35:                                               ; preds = %31
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %9, align 4
  %38 = icmp slt i32 10, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @stderr, align 4
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %55

42:                                               ; preds = %35
  %43 = load i32, i32* @stderr, align 4
  %44 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %45 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.cache_entry*, %struct.cache_entry** %11, align 8
  %48 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %47, i32 0, i32 1
  %49 = call i8* @oid_to_hex(i32* %48)
  %50 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %46, i8* %49)
  br label %51

51:                                               ; preds = %42, %22
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %18

55:                                               ; preds = %39, %18
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 -1, i32* %4, align 4
  br label %122

59:                                               ; preds = %55
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %60

60:                                               ; preds = %114, %59
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %6, align 4
  %63 = sub nsw i32 %62, 1
  %64 = icmp slt i32 %61, %63
  br i1 %64, label %65, label %117

65:                                               ; preds = %60
  %66 = load %struct.cache_entry**, %struct.cache_entry*** %5, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %66, i64 %68
  %70 = load %struct.cache_entry*, %struct.cache_entry** %69, align 8
  %71 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %12, align 8
  %73 = load %struct.cache_entry**, %struct.cache_entry*** %5, align 8
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %73, i64 %76
  %78 = load %struct.cache_entry*, %struct.cache_entry** %77, align 8
  %79 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  store i8* %80, i8** %13, align 8
  %81 = load i8*, i8** %12, align 8
  %82 = call i32 @strlen(i8* %81)
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %14, align 4
  %84 = load i8*, i8** %13, align 8
  %85 = call i32 @strlen(i8* %84)
  %86 = icmp slt i32 %83, %85
  br i1 %86, label %87, label %113

87:                                               ; preds = %65
  %88 = load i8*, i8** %12, align 8
  %89 = load i8*, i8** %13, align 8
  %90 = load i32, i32* %14, align 4
  %91 = call i64 @strncmp(i8* %88, i8* %89, i32 %90)
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %113

93:                                               ; preds = %87
  %94 = load i8*, i8** %13, align 8
  %95 = load i32, i32* %14, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 47
  br i1 %100, label %101, label %113

101:                                              ; preds = %93
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %9, align 4
  %104 = icmp slt i32 10, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = load i32, i32* @stderr, align 4
  %107 = call i32 (i32, i8*, ...) @fprintf(i32 %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %117

108:                                              ; preds = %101
  %109 = load i32, i32* @stderr, align 4
  %110 = load i8*, i8** %12, align 8
  %111 = load i8*, i8** %13, align 8
  %112 = call i32 (i32, i8*, ...) @fprintf(i32 %109, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %110, i8* %111)
  br label %113

113:                                              ; preds = %108, %93, %87, %65
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %8, align 4
  br label %60

117:                                              ; preds = %105, %60
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  store i32 -1, i32* %4, align 4
  br label %122

121:                                              ; preds = %117
  store i32 0, i32* %4, align 4
  br label %122

122:                                              ; preds = %121, %120, %58, %34
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i64 @ce_stage(%struct.cache_entry*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @oid_to_hex(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
