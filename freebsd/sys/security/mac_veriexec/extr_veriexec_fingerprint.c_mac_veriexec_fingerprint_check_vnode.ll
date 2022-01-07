; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_veriexec/extr_veriexec_fingerprint.c_mac_veriexec_fingerprint_check_vnode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_veriexec/extr_veriexec_fingerprint.c_mac_veriexec_fingerprint_check_vnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mac_veriexec_file_info = type { i32, i64 }
%struct.thread = type { i32 }

@ETXTBSY = common dso_local global i32 0, align 4
@MNT_VERIFIED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"file %ju.%lu on verified %s mount\0A\00", align 1
@EAUTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_veriexec_fingerprint_check_vnode(%struct.vnode* %0, %struct.mac_veriexec_file_info* %1, %struct.thread* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca %struct.mac_veriexec_file_info*, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %7, align 8
  store %struct.mac_veriexec_file_info* %1, %struct.mac_veriexec_file_info** %8, align 8
  store %struct.thread* %2, %struct.thread** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %13 = load %struct.vnode*, %struct.vnode** %7, align 8
  %14 = getelementptr inbounds %struct.vnode, %struct.vnode* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load i32, i32* @ETXTBSY, align 4
  store i32 %18, i32* %6, align 4
  br label %65

19:                                               ; preds = %5
  %20 = load %struct.vnode*, %struct.vnode** %7, align 8
  %21 = getelementptr inbounds %struct.vnode, %struct.vnode* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @MNT_VERIFIED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %19
  %29 = load %struct.mac_veriexec_file_info*, %struct.mac_veriexec_file_info** %8, align 8
  %30 = getelementptr inbounds %struct.mac_veriexec_file_info, %struct.mac_veriexec_file_info* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = load %struct.mac_veriexec_file_info*, %struct.mac_veriexec_file_info** %8, align 8
  %34 = getelementptr inbounds %struct.mac_veriexec_file_info, %struct.mac_veriexec_file_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.vnode*, %struct.vnode** %7, align 8
  %37 = getelementptr inbounds %struct.vnode, %struct.vnode* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i8*
  %45 = call i32 @VERIEXEC_DEBUG(i32 2, i8* %44)
  store i32 0, i32* %6, align 4
  br label %65

46:                                               ; preds = %19
  %47 = load %struct.vnode*, %struct.vnode** %7, align 8
  %48 = load %struct.mac_veriexec_file_info*, %struct.mac_veriexec_file_info** %8, align 8
  %49 = load %struct.thread*, %struct.thread** %9, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i8*, i8** %11, align 8
  %52 = call i32 @evaluate_fingerprint(%struct.vnode* %47, %struct.mac_veriexec_file_info* %48, %struct.thread* %49, i32 %50, i8* %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = load i32, i32* %12, align 4
  store i32 %56, i32* %6, align 4
  br label %65

57:                                               ; preds = %46
  %58 = load %struct.mac_veriexec_file_info*, %struct.mac_veriexec_file_info** %8, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = call i64 @fingerprintcmp(%struct.mac_veriexec_file_info* %58, i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @EAUTH, align 4
  store i32 %63, i32* %6, align 4
  br label %65

64:                                               ; preds = %57
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %64, %62, %55, %28, %17
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i32 @VERIEXEC_DEBUG(i32, i8*) #1

declare dso_local i32 @evaluate_fingerprint(%struct.vnode*, %struct.mac_veriexec_file_info*, %struct.thread*, i32, i8*) #1

declare dso_local i64 @fingerprintcmp(%struct.mac_veriexec_file_info*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
