; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptools.c_snmp_output_engine.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/libbsnmptools/extr_bsnmptools.c_snmp_output_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32*, i32, i32 }

@SNMP_ENGINE_ID_SIZ = common dso_local global i32 0, align 4
@snmp_client = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [5 x i8] c"%.2x\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Engine ID 0x%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Boots : %u\09\09Time : %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snmp_output_engine() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = load i32, i32* @SNMP_ENGINE_ID_SIZ, align 4
  %6 = mul nsw i32 2, %5
  %7 = add nsw i32 %6, 2
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  store i8* %10, i8** %2, align 8
  store i64 0, i64* %1, align 8
  br label %11

11:                                               ; preds = %25, %0
  %12 = load i64, i64* %1, align 8
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @snmp_client, i32 0, i32 0, i32 0), align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = load i8*, i8** %2, align 8
  %17 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @snmp_client, i32 0, i32 0, i32 1), align 8
  %18 = load i64, i64* %1, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @sprintf(i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i8*, i8** %2, align 8
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  store i8* %24, i8** %2, align 8
  br label %25

25:                                               ; preds = %15
  %26 = load i64, i64* %1, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %1, align 8
  br label %11

28:                                               ; preds = %11
  %29 = load i8*, i8** %2, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %2, align 8
  store i8 0, i8* %29, align 1
  %31 = load i32, i32* @stdout, align 4
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %10)
  %33 = load i32, i32* @stdout, align 4
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @snmp_client, i32 0, i32 0, i32 2), align 8
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @snmp_client, i32 0, i32 0, i32 3), align 4
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %34, i32 %35)
  %37 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %37)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
