; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pnfsdskill/extr_pnfsdskill.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pnfsdskill/extr_pnfsdskill.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd_pnfsd_args = type { i8*, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Must be run as root/su\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@longopts = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@PNFSDOP_FORCEDELDS = common dso_local global i32 0, align 4
@PNFSDOP_DELDSSERVER = common dso_local global i32 0, align 4
@NFSSVC_PNFSDS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"Can't kill %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.nfsd_pnfsd_args, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = call i64 (...) @geteuid()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %2
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %25, %13
  %15 = load i32, i32* %4, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = load i32, i32* @longopts, align 4
  %18 = call i32 @getopt_long(i32 %15, i8** %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %17, i32* null)
  store i32 %18, i32* %7, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %23 [
    i32 102, label %22
  ]

22:                                               ; preds = %20
  store i32 1, i32* %8, align 4
  br label %25

23:                                               ; preds = %20
  %24 = call i32 (...) @usage()
  br label %25

25:                                               ; preds = %23, %22
  br label %14

26:                                               ; preds = %14
  %27 = load i64, i64* @optind, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = sub nsw i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %4, align 4
  %32 = load i64, i64* @optind, align 8
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 %32
  store i8** %34, i8*** %5, align 8
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 1
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = call i32 (...) @usage()
  br label %39

39:                                               ; preds = %37, %26
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* @PNFSDOP_FORCEDELDS, align 4
  %44 = getelementptr inbounds %struct.nfsd_pnfsd_args, %struct.nfsd_pnfsd_args* %6, i32 0, i32 1
  store i32 %43, i32* %44, align 8
  br label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @PNFSDOP_DELDSSERVER, align 4
  %47 = getelementptr inbounds %struct.nfsd_pnfsd_args, %struct.nfsd_pnfsd_args* %6, i32 0, i32 1
  store i32 %46, i32* %47, align 8
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i8**, i8*** %5, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds %struct.nfsd_pnfsd_args, %struct.nfsd_pnfsd_args* %6, i32 0, i32 0
  store i8* %50, i8** %51, align 8
  %52 = load i32, i32* @NFSSVC_PNFSDS, align 4
  %53 = call i64 @nfssvc(i32 %52, %struct.nfsd_pnfsd_args* %6)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = load i8**, i8*** %5, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %57)
  br label %59

59:                                               ; preds = %55, %48
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @geteuid(...) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @nfssvc(i32, %struct.nfsd_pnfsd_args*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
