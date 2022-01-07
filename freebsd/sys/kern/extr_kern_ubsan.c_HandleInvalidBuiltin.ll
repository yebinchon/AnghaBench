; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_ubsan.c_HandleInvalidBuiltin.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_ubsan.c_HandleInvalidBuiltin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CInvalidBuiltinData = type { i32, i32 }

@LOCATION_MAXLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [84 x i8] c"UBSan: Undefined Behavior in %s, passing zero to %s, which is not a valid argument\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.CInvalidBuiltinData*)* @HandleInvalidBuiltin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HandleInvalidBuiltin(i32 %0, %struct.CInvalidBuiltinData* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.CInvalidBuiltinData*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.CInvalidBuiltinData* %1, %struct.CInvalidBuiltinData** %4, align 8
  %8 = load i32, i32* @LOCATION_MAXLEN, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load %struct.CInvalidBuiltinData*, %struct.CInvalidBuiltinData** %4, align 8
  %13 = call i32 @ASSERT(%struct.CInvalidBuiltinData* %12)
  %14 = load %struct.CInvalidBuiltinData*, %struct.CInvalidBuiltinData** %4, align 8
  %15 = getelementptr inbounds %struct.CInvalidBuiltinData, %struct.CInvalidBuiltinData* %14, i32 0, i32 1
  %16 = call i64 @isAlreadyReported(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %30

19:                                               ; preds = %2
  %20 = load i32, i32* @LOCATION_MAXLEN, align 4
  %21 = load %struct.CInvalidBuiltinData*, %struct.CInvalidBuiltinData** %4, align 8
  %22 = getelementptr inbounds %struct.CInvalidBuiltinData, %struct.CInvalidBuiltinData* %21, i32 0, i32 1
  %23 = call i32 @DeserializeLocation(i8* %11, i32 %20, i32* %22)
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.CInvalidBuiltinData*, %struct.CInvalidBuiltinData** %4, align 8
  %26 = getelementptr inbounds %struct.CInvalidBuiltinData, %struct.CInvalidBuiltinData* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @DeserializeBuiltinCheckKind(i32 %27)
  %29 = call i32 @Report(i32 %24, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i8* %11, i32 %28)
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %19, %18
  %31 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %31)
  %32 = load i32, i32* %7, align 4
  switch i32 %32, label %34 [
    i32 0, label %33
    i32 1, label %33
  ]

33:                                               ; preds = %30, %30
  ret void

34:                                               ; preds = %30
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ASSERT(%struct.CInvalidBuiltinData*) #2

declare dso_local i64 @isAlreadyReported(i32*) #2

declare dso_local i32 @DeserializeLocation(i8*, i32, i32*) #2

declare dso_local i32 @Report(i32, i8*, i8*, i32) #2

declare dso_local i32 @DeserializeBuiltinCheckKind(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
