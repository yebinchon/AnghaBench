; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/vidcontrol/extr_vidcontrol.c_load_vt4font.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/vidcontrol/extr_vidcontrol.c_load_vt4font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, %struct.vt4font_header*, %struct.vt4font_header**, i8**, i32 }
%struct.vt4font_header = type { i64, i32, i32, i32*, i32 }

@load_vt4font.vfnt = internal global %struct.TYPE_3__ zeroinitializer, align 8
@.str = private unnamed_addr constant [17 x i8] c"read file_header\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"VFNT0002\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"bad magic in font file\0A\00", align 1
@VFNT_MAPS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"read glyphs\00", align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@PIO_VFONT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"PIO_VFONT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @load_vt4font to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_vt4font(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.vt4font_header, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @fread(%struct.vt4font_header* %3, i64 32, i32 1, i32* %6)
  %8 = icmp ne i32 %7, 1
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @warn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %113

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.vt4font_header, %struct.vt4font_header* %3, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @memcmp(i32 %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = call i32 @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %113

18:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %35, %18
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @VFNT_MAPS, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.vt4font_header, %struct.vt4font_header* %3, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @be32toh(i32 %29)
  %31 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @load_vt4font.vfnt, i32 0, i32 4), align 8
  %32 = load i32, i32* %5, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  store i8* %30, i8** %34, align 8
  br label %35

35:                                               ; preds = %23
  %36 = load i32, i32* %5, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %19

38:                                               ; preds = %19
  %39 = getelementptr inbounds %struct.vt4font_header, %struct.vt4font_header* %3, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @be32toh(i32 %40)
  %42 = ptrtoint i8* %41 to i64
  store i64 %42, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @load_vt4font.vfnt, i32 0, i32 0), align 8
  %43 = getelementptr inbounds %struct.vt4font_header, %struct.vt4font_header* %3, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @load_vt4font.vfnt, i32 0, i32 5), align 8
  %45 = getelementptr inbounds %struct.vt4font_header, %struct.vt4font_header* %3, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @load_vt4font.vfnt, i32 0, i32 1), align 8
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @load_vt4font.vfnt, i32 0, i32 5), align 8
  %48 = call i64 @howmany(i32 %47, i32 8)
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @load_vt4font.vfnt, i32 0, i32 1), align 8
  %50 = mul i64 %48, %49
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @load_vt4font.vfnt, i32 0, i32 0), align 8
  %52 = mul i64 %50, %51
  store i64 %52, i64* %4, align 8
  %53 = load i64, i64* %4, align 8
  %54 = call %struct.vt4font_header* @malloc(i64 %53)
  store %struct.vt4font_header* %54, %struct.vt4font_header** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @load_vt4font.vfnt, i32 0, i32 2), align 8
  %55 = icmp eq %struct.vt4font_header* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %38
  %57 = call i32 @warn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %113

58:                                               ; preds = %38
  %59 = load %struct.vt4font_header*, %struct.vt4font_header** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @load_vt4font.vfnt, i32 0, i32 2), align 8
  %60 = load i64, i64* %4, align 8
  %61 = load i32*, i32** %2, align 8
  %62 = call i32 @fread(%struct.vt4font_header* %59, i64 %60, i32 1, i32* %61)
  %63 = icmp ne i32 %62, 1
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = call i32 @warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %66 = load %struct.vt4font_header*, %struct.vt4font_header** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @load_vt4font.vfnt, i32 0, i32 2), align 8
  %67 = call i32 @free(%struct.vt4font_header* %66)
  br label %113

68:                                               ; preds = %58
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %85, %68
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @VFNT_MAPS, align 4
  %72 = icmp ult i32 %70, %71
  br i1 %72, label %73, label %88

73:                                               ; preds = %69
  %74 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @load_vt4font.vfnt, i32 0, i32 4), align 8
  %75 = load i32, i32* %5, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = load i32*, i32** %2, align 8
  %80 = call %struct.vt4font_header* @load_vt4mappingtable(i8* %78, i32* %79)
  %81 = load %struct.vt4font_header**, %struct.vt4font_header*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @load_vt4font.vfnt, i32 0, i32 3), align 8
  %82 = load i32, i32* %5, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.vt4font_header*, %struct.vt4font_header** %81, i64 %83
  store %struct.vt4font_header* %80, %struct.vt4font_header** %84, align 8
  br label %85

85:                                               ; preds = %73
  %86 = load i32, i32* %5, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %69

88:                                               ; preds = %69
  %89 = load i32, i32* @STDIN_FILENO, align 4
  %90 = load i32, i32* @PIO_VFONT, align 4
  %91 = call i32 @ioctl(i32 %89, i32 %90, %struct.TYPE_3__* @load_vt4font.vfnt)
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = call i32 @warn(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %88
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %107, %95
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @VFNT_MAPS, align 4
  %99 = icmp ult i32 %97, %98
  br i1 %99, label %100, label %110

100:                                              ; preds = %96
  %101 = load %struct.vt4font_header**, %struct.vt4font_header*** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @load_vt4font.vfnt, i32 0, i32 3), align 8
  %102 = load i32, i32* %5, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.vt4font_header*, %struct.vt4font_header** %101, i64 %103
  %105 = load %struct.vt4font_header*, %struct.vt4font_header** %104, align 8
  %106 = call i32 @free(%struct.vt4font_header* %105)
  br label %107

107:                                              ; preds = %100
  %108 = load i32, i32* %5, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %5, align 4
  br label %96

110:                                              ; preds = %96
  %111 = load %struct.vt4font_header*, %struct.vt4font_header** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @load_vt4font.vfnt, i32 0, i32 2), align 8
  %112 = call i32 @free(%struct.vt4font_header* %111)
  br label %113

113:                                              ; preds = %110, %64, %56, %16, %9
  ret void
}

declare dso_local i32 @fread(%struct.vt4font_header*, i64, i32, i32*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i8* @be32toh(i32) #1

declare dso_local i64 @howmany(i32, i32) #1

declare dso_local %struct.vt4font_header* @malloc(i64) #1

declare dso_local i32 @free(%struct.vt4font_header*) #1

declare dso_local %struct.vt4font_header* @load_vt4mappingtable(i8*, i32*) #1

declare dso_local i32 @ioctl(i32, i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
