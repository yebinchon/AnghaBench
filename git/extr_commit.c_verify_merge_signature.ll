; ModuleID = '/home/carl/AnghaBench/git/extr_commit.c_verify_merge_signature.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit.c_verify_merge_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.signature_check = type { i32, i8* }

@GIT_MAX_HEXSZ = common dso_local global i32 0, align 4
@DEFAULT_ABBREV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Commit %s has an untrusted GPG signature, allegedly by %s.\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Commit %s has a bad GPG signature allegedly by %s.\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Commit %s does not have a GPG signature.\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Commit %s has a good GPG signature by %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @verify_merge_signature(%struct.commit* %0, i32 %1) #0 {
  %3 = alloca %struct.commit*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.signature_check, align 8
  store %struct.commit* %0, %struct.commit** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @GIT_MAX_HEXSZ, align 4
  %9 = add nsw i32 %8, 1
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = call i32 @memset(%struct.signature_check* %7, i32 0, i32 16)
  %14 = load %struct.commit*, %struct.commit** %3, align 8
  %15 = call i32 @check_commit_signature(%struct.commit* %14, %struct.signature_check* %7)
  %16 = load %struct.commit*, %struct.commit** %3, align 8
  %17 = getelementptr inbounds %struct.commit, %struct.commit* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* @DEFAULT_ABBREV, align 4
  %20 = call i32 @find_unique_abbrev_r(i8* %12, i32* %18, i32 %19)
  %21 = getelementptr inbounds %struct.signature_check, %struct.signature_check* %7, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %34 [
    i32 71, label %23
    i32 85, label %24
    i32 66, label %29
  ]

23:                                               ; preds = %2
  br label %37

24:                                               ; preds = %2
  %25 = call i8* @_(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %26 = getelementptr inbounds %struct.signature_check, %struct.signature_check* %7, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 (i8*, i8*, ...) @die(i8* %25, i8* %12, i8* %27)
  br label %29

29:                                               ; preds = %2, %24
  %30 = call i8* @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %31 = getelementptr inbounds %struct.signature_check, %struct.signature_check* %7, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 (i8*, i8*, ...) @die(i8* %30, i8* %12, i8* %32)
  br label %34

34:                                               ; preds = %2, %29
  %35 = call i8* @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %36 = call i32 (i8*, i8*, ...) @die(i8* %35, i8* %12)
  br label %37

37:                                               ; preds = %34, %23
  %38 = load i32, i32* %4, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.signature_check, %struct.signature_check* %7, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 71
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = call i8* @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %46 = getelementptr inbounds %struct.signature_check, %struct.signature_check* %7, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @printf(i8* %45, i8* %12, i8* %47)
  br label %49

49:                                               ; preds = %44, %40, %37
  %50 = call i32 @signature_check_clear(%struct.signature_check* %7)
  %51 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %51)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.signature_check*, i32, i32) #2

declare dso_local i32 @check_commit_signature(%struct.commit*, %struct.signature_check*) #2

declare dso_local i32 @find_unique_abbrev_r(i8*, i32*, i32) #2

declare dso_local i32 @die(i8*, i8*, ...) #2

declare dso_local i8* @_(i8*) #2

declare dso_local i32 @printf(i8*, i8*, i8*) #2

declare dso_local i32 @signature_check_clear(%struct.signature_check*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
