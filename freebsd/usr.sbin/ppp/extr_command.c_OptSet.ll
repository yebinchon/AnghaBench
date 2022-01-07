; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_OptSet.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_OptSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.cmdargs = type { i32, i32, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@NEG_ENABLED = common dso_local global i32 0, align 4
@OPT_IPV6CP = common dso_local global i32 0, align 4
@probe = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@LogWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"IPv6 is not available on this machine\0A\00", align 1
@OPT_NAS_IP_ADDRESS = common dso_local global i32 0, align 4
@OPT_NAS_IDENTIFIER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"Cannot disable both NAS-IP-Address and NAS-Identifier\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmdargs*)* @OptSet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OptSet(%struct.cmdargs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cmdargs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cmdargs* %0, %struct.cmdargs** %3, align 8
  %7 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %8 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %7, i32 0, i32 3
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %4, align 4
  %13 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %14 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %17 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %18, 2
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %15, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32* @ident_cmd(i32 %22, i32* %5, i32* %6)
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %84

26:                                               ; preds = %1
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @NEG_ENABLED, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @OPT_IPV6CP, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @probe, i32 0, i32 0), align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* @LogWARN, align 4
  %39 = call i32 @log_Printf(i32 %38, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %84

40:                                               ; preds = %34, %30, %26
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %68, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @OPT_NAS_IP_ADDRESS, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %49 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @OPT_NAS_IDENTIFIER, align 4
  %52 = call i32 @Enabled(i32 %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %47, %43
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @OPT_NAS_IDENTIFIER, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %54
  %59 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %60 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @OPT_NAS_IP_ADDRESS, align 4
  %63 = call i32 @Enabled(i32 %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %58, %47
  %66 = load i32, i32* @LogWARN, align 4
  %67 = call i32 @log_Printf(i32 %66, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %84

68:                                               ; preds = %58, %54, %40
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %68
  %72 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %73 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @opt_enable(i32 %74, i32 %75)
  br label %83

77:                                               ; preds = %68
  %78 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %79 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @opt_disable(i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %77, %71
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %83, %65, %37, %25
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32* @ident_cmd(i32, i32*, i32*) #1

declare dso_local i32 @log_Printf(i32, i8*) #1

declare dso_local i32 @Enabled(i32, i32) #1

declare dso_local i32 @opt_enable(i32, i32) #1

declare dso_local i32 @opt_disable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
