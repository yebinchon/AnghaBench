; ModuleID = '/home/carl/AnghaBench/git/contrib/credential/wincred/extr_git-credential-wincred.c_erase_credential.c'
source_filename = "/home/carl/AnghaBench/git/contrib/credential/wincred/extr_git-credential-wincred.c_erase_credential.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i32] [i32 103, i32 105, i32 116, i32 58, i32 42, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @erase_credential to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @erase_credential() #0 {
  %1 = alloca %struct.TYPE_5__**, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @CredEnumerateW(i8* bitcast ([6 x i32]* @.str to i8*), i32 0, i32* %2, %struct.TYPE_5__*** %1)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  br label %43

7:                                                ; preds = %0
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %37, %7
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %40

12:                                               ; preds = %8
  %13 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %1, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %13, i64 %15
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = call i64 @match_cred(%struct.TYPE_5__* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %12
  %21 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %1, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %21, i64 %23
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %1, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %28, i64 %30
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @CredDeleteW(i32 %27, i32 %34, i32 0)
  br label %36

36:                                               ; preds = %20, %12
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %8

40:                                               ; preds = %8
  %41 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %1, align 8
  %42 = call i32 @CredFree(%struct.TYPE_5__** %41)
  br label %43

43:                                               ; preds = %40, %6
  ret void
}

declare dso_local i32 @CredEnumerateW(i8*, i32, i32*, %struct.TYPE_5__***) #1

declare dso_local i64 @match_cred(%struct.TYPE_5__*) #1

declare dso_local i32 @CredDeleteW(i32, i32, i32) #1

declare dso_local i32 @CredFree(%struct.TYPE_5__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
