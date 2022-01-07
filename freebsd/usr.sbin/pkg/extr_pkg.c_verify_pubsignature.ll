; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pkg/extr_pkg.c_verify_pubsignature.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pkg/extr_pkg.c_verify_pubsignature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pubkey = type { %struct.pubkey*, i32 }

@PUBKEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"No CONFIG_PUBKEY defined\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Error reading signature\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Verifying signature with public key %s... \00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Signature is not valid\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @verify_pubsignature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_pubsignature(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pubkey*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store %struct.pubkey* null, %struct.pubkey** %5, align 8
  store i8* null, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @PUBKEY, align 4
  %9 = call i64 @config_string(i32 %8, i8** %6)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %36

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.pubkey* @read_pubkey(i32 %14)
  store %struct.pubkey* %15, %struct.pubkey** %5, align 8
  %16 = icmp eq %struct.pubkey* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = call i32 @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %36

19:                                               ; preds = %13
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %20)
  %22 = load i32, i32* %3, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.pubkey*, %struct.pubkey** %5, align 8
  %25 = getelementptr inbounds %struct.pubkey, %struct.pubkey* %24, i32 0, i32 0
  %26 = load %struct.pubkey*, %struct.pubkey** %25, align 8
  %27 = load %struct.pubkey*, %struct.pubkey** %5, align 8
  %28 = getelementptr inbounds %struct.pubkey, %struct.pubkey* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @rsa_verify_cert(i32 %22, i8* %23, i32* null, i32 0, %struct.pubkey* %26, i32 %29)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %19
  %33 = load i32, i32* @stderr, align 4
  %34 = call i32 @fprintf(i32 %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %36

35:                                               ; preds = %19
  store i32 1, i32* %7, align 4
  br label %36

36:                                               ; preds = %35, %32, %17, %11
  %37 = load %struct.pubkey*, %struct.pubkey** %5, align 8
  %38 = icmp ne %struct.pubkey* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load %struct.pubkey*, %struct.pubkey** %5, align 8
  %41 = getelementptr inbounds %struct.pubkey, %struct.pubkey* %40, i32 0, i32 0
  %42 = load %struct.pubkey*, %struct.pubkey** %41, align 8
  %43 = call i32 @free(%struct.pubkey* %42)
  %44 = load %struct.pubkey*, %struct.pubkey** %5, align 8
  %45 = call i32 @free(%struct.pubkey* %44)
  br label %46

46:                                               ; preds = %39, %36
  %47 = load i32, i32* %7, align 4
  ret i32 %47
}

declare dso_local i64 @config_string(i32, i8**) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local %struct.pubkey* @read_pubkey(i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @rsa_verify_cert(i32, i8*, i32*, i32, %struct.pubkey*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @free(%struct.pubkey*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
