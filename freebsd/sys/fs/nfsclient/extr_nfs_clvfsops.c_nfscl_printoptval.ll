; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvfsops.c_nfscl_printoptval.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvfsops.c_nfscl_printoptval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsmount = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%s=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfsmount*, i32, i8*, i8**, i64*)* @nfscl_printoptval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfscl_printoptval(%struct.nfsmount* %0, i32 %1, i8* %2, i8** %3, i64* %4) #0 {
  %6 = alloca %struct.nfsmount*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  store %struct.nfsmount* %0, %struct.nfsmount** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i64* %4, i64** %10, align 8
  %12 = load i64*, i64** %10, align 8
  %13 = load i64, i64* %12, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i32 @strlen(i8* %14)
  %16 = add nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = icmp ugt i64 %13, %17
  br i1 %18, label %19, label %44

19:                                               ; preds = %5
  %20 = load i8**, i8*** %9, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = load i64*, i64** %10, align 8
  %23 = load i64, i64* %22, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @snprintf(i8* %21, i64 %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %24, i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = load i64*, i64** %10, align 8
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %28, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %19
  %33 = load i32, i32* %11, align 4
  %34 = load i8**, i8*** %9, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = sext i32 %33 to i64
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  store i8* %37, i8** %34, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = load i64*, i64** %10, align 8
  %41 = load i64, i64* %40, align 8
  %42 = sub i64 %41, %39
  store i64 %42, i64* %40, align 8
  br label %43

43:                                               ; preds = %32, %19
  br label %44

44:                                               ; preds = %43, %5
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
