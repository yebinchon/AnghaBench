; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_nat_cmd.c_nat_PunchFW.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_nat_cmd.c_nat_PunchFW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdargs = type { i32, i32, i32* }

@la = common dso_local global i32 0, align 4
@PKT_ALIAS_PUNCH_FW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nat_PunchFW(%struct.cmdargs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cmdargs*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.cmdargs* %0, %struct.cmdargs** %3, align 8
  %7 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %8 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %11 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %9, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @la, align 4
  %16 = load i32, i32* @PKT_ALIAS_PUNCH_FW, align 4
  %17 = call i32 @LibAliasSetMode(i32 %15, i32 0, i32 %16)
  store i32 0, i32* %2, align 4
  br label %76

18:                                               ; preds = %1
  %19 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %20 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %23 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 2
  %26 = icmp ne i32 %21, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  store i32 -1, i32* %2, align 4
  br label %76

28:                                               ; preds = %18
  %29 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %30 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %33 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %31, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @strtol(i32 %37, i8** %4, i32 10)
  store i64 %38, i64* %5, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %28
  %44 = load i64, i64* %5, align 8
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43, %28
  store i32 -1, i32* %2, align 4
  br label %76

47:                                               ; preds = %43
  %48 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %49 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %52 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %50, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @strtol(i32 %57, i8** %4, i32 10)
  store i64 %58, i64* %6, align 8
  %59 = load i8*, i8** %4, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %47
  %64 = load i64, i64* %6, align 8
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63, %47
  store i32 -1, i32* %2, align 4
  br label %76

67:                                               ; preds = %63
  %68 = load i32, i32* @la, align 4
  %69 = load i64, i64* %5, align 8
  %70 = load i64, i64* %6, align 8
  %71 = call i32 @LibAliasSetFWBase(i32 %68, i64 %69, i64 %70)
  %72 = load i32, i32* @la, align 4
  %73 = load i32, i32* @PKT_ALIAS_PUNCH_FW, align 4
  %74 = load i32, i32* @PKT_ALIAS_PUNCH_FW, align 4
  %75 = call i32 @LibAliasSetMode(i32 %72, i32 %73, i32 %74)
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %67, %66, %46, %27, %14
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @LibAliasSetMode(i32, i32, i32) #1

declare dso_local i64 @strtol(i32, i8**, i32) #1

declare dso_local i32 @LibAliasSetFWBase(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
