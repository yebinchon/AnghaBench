; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ip6addrctl/extr_ip6addrctl.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ip6addrctl/extr_ip6addrctl.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@policyhead = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"show\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"flush\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"install\00", align 1
@configfile = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = call i32 @TAILQ_INIT(i32* @policyhead)
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = load i8**, i8*** %5, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 1
  %12 = load i8*, i8** %11, align 8
  %13 = call i64 @strcasecmp(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %9, %2
  %16 = call i32 (...) @get_policy()
  %17 = call i32 (...) @dump_policy()
  br label %89

18:                                               ; preds = %9
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8
  %22 = call i64 @strcasecmp(i8* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %18
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 5
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32 (...) @usage()
  br label %29

29:                                               ; preds = %27, %24
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 2
  %32 = load i8*, i8** %31, align 8
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 3
  %35 = load i8*, i8** %34, align 8
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 4
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @add_policy(i8* %32, i8* %35, i8* %38)
  br label %88

40:                                               ; preds = %18
  %41 = load i8**, i8*** %5, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 1
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @strcasecmp(i8* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %40
  %47 = load i32, i32* %4, align 4
  %48 = icmp slt i32 %47, 3
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = call i32 (...) @usage()
  br label %51

51:                                               ; preds = %49, %46
  %52 = load i8**, i8*** %5, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 2
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @delete_policy(i8* %54)
  br label %87

56:                                               ; preds = %40
  %57 = load i8**, i8*** %5, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 1
  %59 = load i8*, i8** %58, align 8
  %60 = call i64 @strcasecmp(i8* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = call i32 (...) @get_policy()
  %64 = call i32 (...) @flush_policy()
  br label %86

65:                                               ; preds = %56
  %66 = load i8**, i8*** %5, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 1
  %68 = load i8*, i8** %67, align 8
  %69 = call i64 @strcasecmp(i8* %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %65
  %72 = load i32, i32* %4, align 4
  %73 = icmp slt i32 %72, 3
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = call i32 (...) @usage()
  br label %76

76:                                               ; preds = %74, %71
  %77 = load i8**, i8*** %5, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 2
  %79 = load i8*, i8** %78, align 8
  store i8* %79, i8** @configfile, align 8
  %80 = load i8*, i8** @configfile, align 8
  %81 = call i32 @make_policy_fromfile(i8* %80)
  %82 = call i32 (...) @set_policy()
  br label %85

83:                                               ; preds = %65
  %84 = call i32 (...) @usage()
  br label %85

85:                                               ; preds = %83, %76
  br label %86

86:                                               ; preds = %85, %62
  br label %87

87:                                               ; preds = %86, %51
  br label %88

88:                                               ; preds = %87, %29
  br label %89

89:                                               ; preds = %88, %15
  %90 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @get_policy(...) #1

declare dso_local i32 @dump_policy(...) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @add_policy(i8*, i8*, i8*) #1

declare dso_local i32 @delete_policy(i8*) #1

declare dso_local i32 @flush_policy(...) #1

declare dso_local i32 @make_policy_fromfile(i8*) #1

declare dso_local i32 @set_policy(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
