; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_ioctl.c_pf_init_tagset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_ioctl.c_pf_init_tagset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_tagset = type { i32, i32, i32*, i32*, i32 }

@M_PFHASH = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@TAGID_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pf_tagset*, i32*, i32)* @pf_init_tagset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pf_init_tagset(%struct.pf_tagset* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.pf_tagset*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pf_tagset* %0, %struct.pf_tagset** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @powerof2(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12, %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32*, i32** %5, align 8
  store i32 %18, i32* %19, align 4
  br label %20

20:                                               ; preds = %17, %12
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @M_PFHASH, align 4
  %25 = load i32, i32* @M_WAITOK, align 4
  %26 = call i8* @mallocarray(i32 %23, i32 4, i32 %24, i32 %25)
  %27 = bitcast i8* %26 to i32*
  %28 = load %struct.pf_tagset*, %struct.pf_tagset** %4, align 8
  %29 = getelementptr inbounds %struct.pf_tagset, %struct.pf_tagset* %28, i32 0, i32 3
  store i32* %27, i32** %29, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @M_PFHASH, align 4
  %32 = load i32, i32* @M_WAITOK, align 4
  %33 = call i8* @mallocarray(i32 %30, i32 4, i32 %31, i32 %32)
  %34 = bitcast i8* %33 to i32*
  %35 = load %struct.pf_tagset*, %struct.pf_tagset** %4, align 8
  %36 = getelementptr inbounds %struct.pf_tagset, %struct.pf_tagset* %35, i32 0, i32 2
  store i32* %34, i32** %36, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sub i32 %37, 1
  %39 = load %struct.pf_tagset*, %struct.pf_tagset** %4, align 8
  %40 = getelementptr inbounds %struct.pf_tagset, %struct.pf_tagset* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = call i32 (...) @arc4random()
  %42 = load %struct.pf_tagset*, %struct.pf_tagset** %4, align 8
  %43 = getelementptr inbounds %struct.pf_tagset, %struct.pf_tagset* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 8
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %63, %20
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %44
  %49 = load %struct.pf_tagset*, %struct.pf_tagset** %4, align 8
  %50 = getelementptr inbounds %struct.pf_tagset, %struct.pf_tagset* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = call i32 @TAILQ_INIT(i32* %54)
  %56 = load %struct.pf_tagset*, %struct.pf_tagset** %4, align 8
  %57 = getelementptr inbounds %struct.pf_tagset, %struct.pf_tagset* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = call i32 @TAILQ_INIT(i32* %61)
  br label %63

63:                                               ; preds = %48
  %64 = load i32, i32* %7, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %44

66:                                               ; preds = %44
  %67 = load i32, i32* @TAGID_MAX, align 4
  %68 = load %struct.pf_tagset*, %struct.pf_tagset** %4, align 8
  %69 = getelementptr inbounds %struct.pf_tagset, %struct.pf_tagset* %68, i32 0, i32 1
  %70 = call i32 @BIT_FILL(i32 %67, i32* %69)
  ret void
}

declare dso_local i32 @powerof2(i32) #1

declare dso_local i8* @mallocarray(i32, i32, i32, i32) #1

declare dso_local i32 @arc4random(...) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @BIT_FILL(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
