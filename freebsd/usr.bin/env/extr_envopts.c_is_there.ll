; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/env/extr_envopts.c_is_there.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/env/extr_envopts.c_is_there.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@X_OK = common dso_local global i32 0, align 4
@S_IXUSR = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@S_IXOTH = common dso_local global i32 0, align 4
@env_verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"#env   matched:\09'%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @is_there to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_there(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stat, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i32, i32* @X_OK, align 4
  %7 = call i64 @access(i8* %5, i32 %6)
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %39

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @stat(i8* %10, %struct.stat* %4)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %39

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @S_ISREG(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %13
  %19 = call i64 (...) @getuid()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @S_IXUSR, align 4
  %25 = load i32, i32* @S_IXGRP, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @S_IXOTH, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %23, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %21, %18
  %32 = load i32, i32* @env_verbosity, align 4
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32, i32* @stderr, align 4
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 @fprintf(i32 %35, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %36)
  br label %38

38:                                               ; preds = %34, %31
  store i32 1, i32* %2, align 4
  br label %40

39:                                               ; preds = %21, %13, %9, %1
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %38
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @getuid(...) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
