; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_fwctl.c_fwctl_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_fwctl.c_fwctl_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@rinfo = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @fwctl_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fwctl_response(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rinfo, i32 0, i32 0), align 8
  switch i32 %6, label %31 [
    i32 0, label %7
    i32 1, label %16
    i32 2, label %21
    i32 3, label %26
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rinfo, i32 0, i32 1), align 4
  %9 = call i32 @roundup(i32 %8, i32 4)
  %10 = sext i32 %9 to i64
  %11 = add i64 16, %10
  %12 = trunc i64 %11 to i32
  %13 = load i32*, i32** %3, align 8
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rinfo, i32 0, i32 0), align 8
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rinfo, i32 0, i32 0), align 8
  br label %63

16:                                               ; preds = %1
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rinfo, i32 0, i32 6), align 8
  %18 = load i32*, i32** %3, align 8
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rinfo, i32 0, i32 0), align 8
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rinfo, i32 0, i32 0), align 8
  br label %63

21:                                               ; preds = %1
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rinfo, i32 0, i32 5), align 4
  %23 = load i32*, i32** %3, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rinfo, i32 0, i32 0), align 8
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rinfo, i32 0, i32 0), align 8
  br label %63

26:                                               ; preds = %1
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rinfo, i32 0, i32 4), align 8
  %28 = load i32*, i32** %3, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rinfo, i32 0, i32 0), align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rinfo, i32 0, i32 0), align 8
  br label %63

31:                                               ; preds = %1
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rinfo, i32 0, i32 1), align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rinfo, i32 0, i32 2), align 8
  %34 = sub nsw i32 %32, %33
  store i32 %34, i32* %5, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rinfo, i32 0, i32 3), align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i32*
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rinfo, i32 0, i32 2), align 8
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32* %41, i32** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp uge i64 %43, 4
  br i1 %44, label %45, label %49

45:                                               ; preds = %31
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %3, align 8
  store i32 %47, i32* %48, align 4
  br label %58

49:                                               ; preds = %31
  %50 = load i32, i32* %5, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @fwctl_send_rest(i32* %53, i32 %54)
  %56 = load i32*, i32** %3, align 8
  store i32 %55, i32* %56, align 4
  br label %57

57:                                               ; preds = %52, %49
  br label %58

58:                                               ; preds = %57, %45
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rinfo, i32 0, i32 2), align 8
  %60 = sext i32 %59 to i64
  %61 = add i64 %60, 4
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rinfo, i32 0, i32 2), align 8
  br label %63

63:                                               ; preds = %58, %26, %21, %16, %7
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rinfo, i32 0, i32 0), align 8
  %65 = icmp sgt i32 %64, 3
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rinfo, i32 0, i32 2), align 8
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rinfo, i32 0, i32 1), align 4
  %69 = icmp sge i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = call i32 (...) @fwctl_response_done()
  store i32 1, i32* %2, align 4
  br label %73

72:                                               ; preds = %66, %63
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %70
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @fwctl_send_rest(i32*, i32) #1

declare dso_local i32 @fwctl_response_done(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
