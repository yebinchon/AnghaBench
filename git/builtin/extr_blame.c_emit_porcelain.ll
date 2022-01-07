; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_blame.c_emit_porcelain.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_blame.c_emit_porcelain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blame_scoreboard = type { i8*, i32 }
%struct.blame_entry = type { i32, i32, i32, %struct.blame_origin* }
%struct.blame_origin = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@OUTPUT_LINE_PORCELAIN = common dso_local global i32 0, align 4
@GIT_MAX_HEXSZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%s %d %d %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%s %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blame_scoreboard*, %struct.blame_entry*, i32)* @emit_porcelain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_porcelain(%struct.blame_scoreboard* %0, %struct.blame_entry* %1, i32 %2) #0 {
  %4 = alloca %struct.blame_scoreboard*, align 8
  %5 = alloca %struct.blame_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.blame_origin*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8, align 1
  store %struct.blame_scoreboard* %0, %struct.blame_scoreboard** %4, align 8
  store %struct.blame_entry* %1, %struct.blame_entry** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @OUTPUT_LINE_PORCELAIN, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %7, align 4
  %17 = load %struct.blame_entry*, %struct.blame_entry** %5, align 8
  %18 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %17, i32 0, i32 3
  %19 = load %struct.blame_origin*, %struct.blame_origin** %18, align 8
  store %struct.blame_origin* %19, %struct.blame_origin** %10, align 8
  %20 = load i32, i32* @GIT_MAX_HEXSZ, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %11, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %12, align 8
  %25 = load %struct.blame_origin*, %struct.blame_origin** %10, align 8
  %26 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = call i32 @oid_to_hex_r(i8* %24, i32* %29)
  %31 = load %struct.blame_entry*, %struct.blame_entry** %5, align 8
  %32 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  %35 = load %struct.blame_entry*, %struct.blame_entry** %5, align 8
  %36 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  %39 = load %struct.blame_entry*, %struct.blame_entry** %5, align 8
  %40 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 (i8*, i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %24, i32 %34, i32 %38, i32 %41)
  %43 = load %struct.blame_origin*, %struct.blame_origin** %10, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @emit_porcelain_details(%struct.blame_origin* %43, i32 %44)
  %46 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %47 = load %struct.blame_entry*, %struct.blame_entry** %5, align 8
  %48 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @blame_nth_line(%struct.blame_scoreboard* %46, i32 %49)
  store i8* %50, i8** %9, align 8
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %106, %3
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.blame_entry*, %struct.blame_entry** %5, align 8
  %54 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %109

57:                                               ; preds = %51
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %80

60:                                               ; preds = %57
  %61 = load %struct.blame_entry*, %struct.blame_entry** %5, align 8
  %62 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %64, %65
  %67 = load %struct.blame_entry*, %struct.blame_entry** %5, align 8
  %68 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %70, %71
  %73 = call i32 (i8*, i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %24, i32 %66, i32 %72)
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %60
  %77 = load %struct.blame_origin*, %struct.blame_origin** %10, align 8
  %78 = call i32 @emit_porcelain_details(%struct.blame_origin* %77, i32 1)
  br label %79

79:                                               ; preds = %76, %60
  br label %80

80:                                               ; preds = %79, %57
  %81 = call i32 @putchar(i8 signext 9)
  br label %82

82:                                               ; preds = %103, %80
  %83 = load i8*, i8** %9, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %9, align 8
  %85 = load i8, i8* %83, align 1
  store i8 %85, i8* %13, align 1
  %86 = load i8, i8* %13, align 1
  %87 = call i32 @putchar(i8 signext %86)
  br label %88

88:                                               ; preds = %82
  %89 = load i8, i8* %13, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp ne i32 %90, 10
  br i1 %91, label %92, label %103

92:                                               ; preds = %88
  %93 = load i8*, i8** %9, align 8
  %94 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %95 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %98 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %96, i64 %100
  %102 = icmp ult i8* %93, %101
  br label %103

103:                                              ; preds = %92, %88
  %104 = phi i1 [ false, %88 ], [ %102, %92 ]
  br i1 %104, label %82, label %105

105:                                              ; preds = %103
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %8, align 4
  br label %51

109:                                              ; preds = %51
  %110 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %111 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %109
  %115 = load i8*, i8** %9, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 -1
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp ne i32 %118, 10
  br i1 %119, label %120, label %122

120:                                              ; preds = %114
  %121 = call i32 @putchar(i8 signext 10)
  br label %122

122:                                              ; preds = %120, %114, %109
  %123 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %123)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @oid_to_hex_r(i8*, i32*) #2

declare dso_local i32 @printf(i8*, i8*, i32, i32, ...) #2

declare dso_local i32 @emit_porcelain_details(%struct.blame_origin*, i32) #2

declare dso_local i8* @blame_nth_line(%struct.blame_scoreboard*, i32) #2

declare dso_local i32 @putchar(i8 signext) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
