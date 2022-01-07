; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_options.c_ip_optcopy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_options.c_ip_optcopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip = type { i32 }

@IPOPT_EOL = common dso_local global i32 0, align 4
@IPOPT_NOP = common dso_local global i32 0, align 4
@IPOPT_OLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"ip_optcopy: malformed ipv4 option\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_optcopy(%struct.ip* %0, %struct.ip* %1) #0 {
  %3 = alloca %struct.ip*, align 8
  %4 = alloca %struct.ip*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ip* %0, %struct.ip** %3, align 8
  store %struct.ip* %1, %struct.ip** %4, align 8
  %10 = load %struct.ip*, %struct.ip** %3, align 8
  %11 = getelementptr inbounds %struct.ip, %struct.ip* %10, i64 1
  %12 = bitcast %struct.ip* %11 to i32*
  store i32* %12, i32** %5, align 8
  %13 = load %struct.ip*, %struct.ip** %4, align 8
  %14 = getelementptr inbounds %struct.ip, %struct.ip* %13, i64 1
  %15 = bitcast %struct.ip* %14 to i32*
  store i32* %15, i32** %6, align 8
  %16 = load %struct.ip*, %struct.ip** %3, align 8
  %17 = getelementptr inbounds %struct.ip, %struct.ip* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 %18, 2
  %20 = sext i32 %19 to i64
  %21 = sub i64 %20, 4
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %9, align 4
  br label %23

23:                                               ; preds = %89, %2
  %24 = load i32, i32* %9, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %97

26:                                               ; preds = %23
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @IPOPT_EOL, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %97

34:                                               ; preds = %26
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @IPOPT_NOP, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32, i32* @IPOPT_NOP, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %6, align 8
  store i32 %39, i32* %40, align 4
  store i32 1, i32* %8, align 4
  br label %89

42:                                               ; preds = %34
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = load i32, i32* @IPOPT_OLEN, align 4
  %46 = sext i32 %45 to i64
  %47 = add i64 %46, 4
  %48 = icmp uge i64 %44, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @KASSERT(i32 %49, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* @IPOPT_OLEN, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = load i32, i32* @IPOPT_OLEN, align 4
  %59 = sext i32 %58 to i64
  %60 = add i64 %59, 4
  %61 = icmp uge i64 %57, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %42
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp sle i32 %63, %64
  br label %66

66:                                               ; preds = %62, %42
  %67 = phi i1 [ false, %42 ], [ %65, %62 ]
  %68 = zext i1 %67 to i32
  %69 = call i32 @KASSERT(i32 %68, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i32, i32* %9, align 4
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %73, %66
  %76 = load i32, i32* %7, align 4
  %77 = call i64 @IPOPT_COPIED(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %75
  %80 = load i32*, i32** %5, align 8
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @bcopy(i32* %80, i32* %81, i32 %82)
  %84 = load i32, i32* %8, align 4
  %85 = load i32*, i32** %6, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32* %87, i32** %6, align 8
  br label %88

88:                                               ; preds = %79, %75
  br label %89

89:                                               ; preds = %88, %38
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %9, align 4
  %92 = sub nsw i32 %91, %90
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load i32*, i32** %5, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  store i32* %96, i32** %5, align 8
  br label %23

97:                                               ; preds = %33, %23
  %98 = load i32*, i32** %6, align 8
  %99 = load %struct.ip*, %struct.ip** %4, align 8
  %100 = getelementptr inbounds %struct.ip, %struct.ip* %99, i64 1
  %101 = bitcast %struct.ip* %100 to i32*
  %102 = ptrtoint i32* %98 to i64
  %103 = ptrtoint i32* %101 to i64
  %104 = sub i64 %102, %103
  %105 = sdiv exact i64 %104, 4
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %8, align 4
  br label %107

107:                                              ; preds = %115, %97
  %108 = load i32, i32* %8, align 4
  %109 = and i32 %108, 3
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %107
  %112 = load i32, i32* @IPOPT_EOL, align 4
  %113 = load i32*, i32** %6, align 8
  %114 = getelementptr inbounds i32, i32* %113, i32 1
  store i32* %114, i32** %6, align 8
  store i32 %112, i32* %113, align 4
  br label %115

115:                                              ; preds = %111
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %8, align 4
  br label %107

118:                                              ; preds = %107
  %119 = load i32, i32* %8, align 4
  ret i32 %119
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @IPOPT_COPIED(i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
