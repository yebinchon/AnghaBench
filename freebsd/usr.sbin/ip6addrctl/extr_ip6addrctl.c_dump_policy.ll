; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ip6addrctl/extr_ip6addrctl.c_dump_policy.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ip6addrctl/extr_ip6addrctl.c_dump_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addrpolicy = type { i32, i32, i64, i32, i32 }
%struct.policyqueue = type { %struct.in6_addrpolicy }
%struct.sockaddr = type { i32 }

@NI_MAXHOST = common dso_local global i32 0, align 4
@policyhead = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%-30s %5s %5s %8s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Prefix\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Prec\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Label\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"Use\00", align 1
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"getnameinfo for prefix address failed\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"invalid address mask\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"/%d\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%-30s\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%s/%d\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c" %5d %5d %8llu\0A\00", align 1
@pc_entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dump_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_policy() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.in6_addrpolicy*, align 8
  %5 = alloca %struct.policyqueue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i32, i32* @NI_MAXHOST, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %2, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %3, align 8
  store i32 1, i32* %7, align 4
  %12 = call %struct.policyqueue* @TAILQ_FIRST(i32* @policyhead)
  store %struct.policyqueue* %12, %struct.policyqueue** %5, align 8
  br label %13

13:                                               ; preds = %69, %0
  %14 = load %struct.policyqueue*, %struct.policyqueue** %5, align 8
  %15 = icmp ne %struct.policyqueue* %14, null
  br i1 %15, label %16, label %73

16:                                               ; preds = %13
  %17 = load %struct.policyqueue*, %struct.policyqueue** %5, align 8
  %18 = getelementptr inbounds %struct.policyqueue, %struct.policyqueue* %17, i32 0, i32 0
  store %struct.in6_addrpolicy* %18, %struct.in6_addrpolicy** %4, align 8
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %21, %16
  %24 = load %struct.in6_addrpolicy*, %struct.in6_addrpolicy** %4, align 8
  %25 = getelementptr inbounds %struct.in6_addrpolicy, %struct.in6_addrpolicy* %24, i32 0, i32 4
  %26 = bitcast i32* %25 to %struct.sockaddr*
  %27 = trunc i64 %9 to i32
  %28 = load i32, i32* @NI_NUMERICHOST, align 4
  %29 = call i64 @getnameinfo(%struct.sockaddr* %26, i32 4, i8* %11, i32 %27, i32* null, i32 0, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = call i32 @warnx(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  br label %69

33:                                               ; preds = %23
  %34 = load %struct.in6_addrpolicy*, %struct.in6_addrpolicy** %4, align 8
  %35 = getelementptr inbounds %struct.in6_addrpolicy, %struct.in6_addrpolicy* %34, i32 0, i32 3
  %36 = call i32 @mask2plen(i32* %35)
  store i32 %36, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = call i32 @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %69

40:                                               ; preds = %33
  %41 = call i64 @strlen(i8* %11)
  store i64 %41, i64* %1, align 8
  %42 = load i64, i64* %1, align 8
  %43 = add i64 %42, 5
  %44 = icmp ult i64 %43, %9
  br i1 %44, label %45, label %55

45:                                               ; preds = %40
  %46 = load i64, i64* %1, align 8
  %47 = getelementptr inbounds i8, i8* %11, i64 %46
  %48 = load i64, i64* %1, align 8
  %49 = sub i64 %9, %48
  %50 = sub i64 %49, 1
  %51 = trunc i64 %50 to i32
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @snprintf(i8* %47, i32 %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %52)
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %11)
  br label %58

55:                                               ; preds = %40
  %56 = load i32, i32* %6, align 4
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* %11, i32 %56)
  br label %58

58:                                               ; preds = %55, %45
  %59 = load %struct.in6_addrpolicy*, %struct.in6_addrpolicy** %4, align 8
  %60 = getelementptr inbounds %struct.in6_addrpolicy, %struct.in6_addrpolicy* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.in6_addrpolicy*, %struct.in6_addrpolicy** %4, align 8
  %63 = getelementptr inbounds %struct.in6_addrpolicy, %struct.in6_addrpolicy* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.in6_addrpolicy*, %struct.in6_addrpolicy** %4, align 8
  %66 = getelementptr inbounds %struct.in6_addrpolicy, %struct.in6_addrpolicy* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 %61, i32 %64, i64 %67)
  br label %69

69:                                               ; preds = %58, %38, %31
  %70 = load %struct.policyqueue*, %struct.policyqueue** %5, align 8
  %71 = load i32, i32* @pc_entry, align 4
  %72 = call %struct.policyqueue* @TAILQ_NEXT(%struct.policyqueue* %70, i32 %71)
  store %struct.policyqueue* %72, %struct.policyqueue** %5, align 8
  br label %13

73:                                               ; preds = %13
  %74 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %74)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.policyqueue* @TAILQ_FIRST(i32*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i64 @getnameinfo(%struct.sockaddr*, i32, i8*, i32, i32*, i32, i32) #2

declare dso_local i32 @warnx(i8*) #2

declare dso_local i32 @mask2plen(i32*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local %struct.policyqueue* @TAILQ_NEXT(%struct.policyqueue*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
