; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/efibootmgr/extr_efibootmgr.c_parse_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/efibootmgr/extr_efibootmgr.c_parse_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [28 x i8] c"AaBb:C:cDe:hk:L:l:NnOo:Tt:v\00", align 1
@lopts = common dso_local global i32 0, align 4
@opts = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@optarg = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@USAGE = common dso_local global i32 0, align 4
@CREATE_USAGE = common dso_local global i32 0, align 4
@ORDER_USAGE = common dso_local global i32 0, align 4
@ACTIVE_USAGE = common dso_local global i32 0, align 4
@DELETE_USAGE = common dso_local global i32 0, align 4
@BOOTNEXT_USAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @parse_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_args(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  br label %6

6:                                                ; preds = %64, %2
  %7 = load i32, i32* %3, align 4
  %8 = load i8**, i8*** %4, align 8
  %9 = load i32, i32* @lopts, align 4
  %10 = call i32 @getopt_long(i32 %7, i8** %8, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %9, i32* null)
  store i32 %10, i32* %5, align 4
  %11 = icmp ne i32 %10, -1
  br i1 %11, label %12, label %65

12:                                               ; preds = %6
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %31 [
    i32 65, label %14
    i32 97, label %15
    i32 98, label %16
    i32 66, label %19
    i32 67, label %20
    i32 99, label %23
    i32 68, label %24
    i32 101, label %25
    i32 104, label %30
    i32 107, label %34
    i32 76, label %39
    i32 108, label %44
    i32 78, label %51
    i32 110, label %52
    i32 79, label %53
    i32 111, label %54
    i32 84, label %59
    i32 116, label %60
    i32 118, label %63
  ]

14:                                               ; preds = %12
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 0), align 8
  br label %64

15:                                               ; preds = %12
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 1), align 4
  br label %64

16:                                               ; preds = %12
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 2), align 8
  %17 = load i32, i32* @optarg, align 4
  %18 = call i8* @strtoul(i32 %17, i32* null, i32 16)
  store i8* %18, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 20), align 8
  br label %64

19:                                               ; preds = %12
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 3), align 4
  br label %64

20:                                               ; preds = %12
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 4), align 8
  %21 = load i32, i32* @optarg, align 4
  %22 = call i8* @strtoul(i32 %21, i32* null, i32 16)
  store i8* %22, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 19), align 8
  br label %23

23:                                               ; preds = %12, %20
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 5), align 4
  br label %64

24:                                               ; preds = %12
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 6), align 8
  br label %64

25:                                               ; preds = %12
  %26 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 18), align 8
  %27 = call i32 @free(i8* %26)
  %28 = load i32, i32* @optarg, align 4
  %29 = call i8* @strdup(i32 %28)
  store i8* %29, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 18), align 8
  br label %64

30:                                               ; preds = %12
  br label %31

31:                                               ; preds = %12, %30
  %32 = load i32, i32* @USAGE, align 4
  %33 = call i32 @errx(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %64

34:                                               ; preds = %12
  %35 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 17), align 8
  %36 = call i32 @free(i8* %35)
  %37 = load i32, i32* @optarg, align 4
  %38 = call i8* @strdup(i32 %37)
  store i8* %38, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 17), align 8
  br label %64

39:                                               ; preds = %12
  %40 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 16), align 8
  %41 = call i32 @free(i8* %40)
  %42 = load i32, i32* @optarg, align 4
  %43 = call i8* @strdup(i32 %42)
  store i8* %43, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 16), align 8
  br label %64

44:                                               ; preds = %12
  %45 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 14), align 8
  %46 = call i32 @free(i8* %45)
  %47 = load i32, i32* @optarg, align 4
  %48 = call i8* @strdup(i32 %47)
  store i8* %48, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 14), align 8
  %49 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 14), align 8
  %50 = call i8* @mangle_loader(i8* %49)
  store i8* %50, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 14), align 8
  br label %64

51:                                               ; preds = %12
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 7), align 4
  br label %64

52:                                               ; preds = %12
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 8), align 8
  br label %64

53:                                               ; preds = %12
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 9), align 4
  br label %64

54:                                               ; preds = %12
  %55 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 13), align 8
  %56 = call i32 @free(i8* %55)
  %57 = load i32, i32* @optarg, align 4
  %58 = call i8* @strdup(i32 %57)
  store i8* %58, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 13), align 8
  br label %64

59:                                               ; preds = %12
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 10), align 8
  br label %64

60:                                               ; preds = %12
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 11), align 4
  %61 = load i32, i32* @optarg, align 4
  %62 = call i8* @strtoul(i32 %61, i32* null, i32 10)
  store i8* %62, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 15), align 8
  br label %64

63:                                               ; preds = %12
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 12), align 8
  br label %64

64:                                               ; preds = %63, %60, %59, %54, %53, %52, %51, %44, %39, %34, %31, %25, %24, %23, %19, %16, %15, %14
  br label %6

65:                                               ; preds = %6
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 5), align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 14), align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* @CREATE_USAGE, align 4
  %73 = call i32 @errx(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %71, %68
  br label %114

75:                                               ; preds = %65
  %76 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 13), align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 13), align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* @ORDER_USAGE, align 4
  %83 = call i32 @errx(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %81, %78, %75
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 0), align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 1), align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %87, %84
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 2), align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* @ACTIVE_USAGE, align 4
  %95 = call i32 @errx(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %93, %90, %87
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 3), align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 2), align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = load i32, i32* @DELETE_USAGE, align 4
  %104 = call i32 @errx(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %102, %99, %96
  %106 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 8), align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %105
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @opts, i32 0, i32 2), align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* @BOOTNEXT_USAGE, align 4
  %113 = call i32 @errx(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %74, %111, %108, %105
  ret void
}

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #1

declare dso_local i8* @strtoul(i32, i32*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i32) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i8* @mangle_loader(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
