; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_le.c_le_set_scan_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_le.c_le_set_scan_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@USAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"passive\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"public\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"random\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"whitelist\00", align 1
@NG_HCI_OGF_LE = common dso_local global i32 0, align 4
@NG_HCI_OCF_LE_SET_SCAN_PARAMETERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8**)* @le_set_scan_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @le_set_scan_param(i32 %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_2__, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 5
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @USAGE, align 4
  store i32 %20, i32* %4, align 4
  br label %116

21:                                               ; preds = %3
  %22 = load i8**, i8*** %7, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 1, i32* %8, align 4
  br label %38

28:                                               ; preds = %21
  %29 = load i8**, i8*** %7, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @strcmp(i8* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 0, i32* %8, align 4
  br label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @USAGE, align 4
  store i32 %36, i32* %4, align 4
  br label %116

37:                                               ; preds = %34
  br label %38

38:                                               ; preds = %37, %27
  %39 = load i8**, i8*** %7, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 1
  %41 = load i8*, i8** %40, align 8
  %42 = call double @atof(i8* %41)
  %43 = fdiv double %42, 6.250000e-01
  %44 = fptosi double %43 to i32
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %45, 4
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %50

48:                                               ; preds = %38
  %49 = load i32, i32* %9, align 4
  br label %50

50:                                               ; preds = %48, %47
  %51 = phi i32 [ 4, %47 ], [ %49, %48 ]
  store i32 %51, i32* %9, align 4
  %52 = load i8**, i8*** %7, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 2
  %54 = load i8*, i8** %53, align 8
  %55 = call double @atof(i8* %54)
  %56 = fdiv double %55, 6.250000e-01
  %57 = fptosi double %56 to i32
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %58, 4
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  br label %63

61:                                               ; preds = %50
  %62 = load i32, i32* %9, align 4
  br label %63

63:                                               ; preds = %61, %60
  %64 = phi i32 [ 4, %60 ], [ %62, %61 ]
  store i32 %64, i32* %10, align 4
  %65 = load i8**, i8*** %7, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 3
  %67 = load i8*, i8** %66, align 8
  %68 = call i64 @strcmp(i8* %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  store i32 0, i32* %11, align 4
  br label %81

71:                                               ; preds = %63
  %72 = load i8**, i8*** %7, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 3
  %74 = load i8*, i8** %73, align 8
  %75 = call i64 @strcmp(i8* %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  store i32 1, i32* %11, align 4
  br label %80

78:                                               ; preds = %71
  %79 = load i32, i32* @USAGE, align 4
  store i32 %79, i32* %4, align 4
  br label %116

80:                                               ; preds = %77
  br label %81

81:                                               ; preds = %80, %70
  %82 = load i8**, i8*** %7, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 4
  %84 = load i8*, i8** %83, align 8
  %85 = call i64 @strcmp(i8* %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  store i32 0, i32* %12, align 4
  br label %98

88:                                               ; preds = %81
  %89 = load i8**, i8*** %7, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 4
  %91 = load i8*, i8** %90, align 8
  %92 = call i64 @strcmp(i8* %91, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  store i32 1, i32* %12, align 4
  br label %97

95:                                               ; preds = %88
  %96 = load i32, i32* @USAGE, align 4
  store i32 %96, i32* %4, align 4
  br label %116

97:                                               ; preds = %94
  br label %98

98:                                               ; preds = %97, %87
  %99 = load i32, i32* %8, align 4
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %99, i32* %100, align 4
  %101 = load i32, i32* %9, align 4
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i32 %101, i32* %102, align 4
  %103 = load i32, i32* %11, align 4
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  store i32 %103, i32* %104, align 4
  %105 = load i32, i32* %10, align 4
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  store i32 %105, i32* %106, align 4
  %107 = load i32, i32* %12, align 4
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 4
  store i32 %107, i32* %108, align 4
  store i32 4, i32* %14, align 4
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* @NG_HCI_OGF_LE, align 4
  %111 = load i32, i32* @NG_HCI_OCF_LE_SET_SCAN_PARAMETERS, align 4
  %112 = call i32 @NG_HCI_OPCODE(i32 %110, i32 %111)
  %113 = bitcast %struct.TYPE_2__* %15 to i8*
  %114 = bitcast i32* %16 to i8*
  %115 = call i32 @hci_request(i32 %109, i32 %112, i8* %113, i32 20, i8* %114, i32* %14)
  store i32 %115, i32* %13, align 4
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %98, %95, %78, %35, %19
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local double @atof(i8*) #1

declare dso_local i32 @hci_request(i32, i32, i8*, i32, i8*, i32*) #1

declare dso_local i32 @NG_HCI_OPCODE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
