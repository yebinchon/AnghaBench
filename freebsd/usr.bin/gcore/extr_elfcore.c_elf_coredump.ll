; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gcore/extr_elfcore.c_elf_coredump.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gcore/extr_elfcore.c_elf_coredump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sseg_closure = type { i32, i64 }
%struct.sbuf = type { i32 }
%struct.TYPE_2__ = type { i32, i64 }
%struct.ptrace_io_desc = type { i8*, i32, i32*, i32 }

@g_pid = common dso_local global i32 0, align 4
@elf_detach = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"atexit\00", align 1
@errno = common dso_local global i64 0, align 8
@PT_ATTACH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"PT_ATTACH\00", align 1
@g_status = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"waitpid\00", align 1
@cb_size_segment = common dso_local global i32 0, align 4
@PN_XNUM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"sbuf_finish\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"short write\00", align 1
@PIOD_READ_D = common dso_local global i32 0, align 4
@PT_IO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"short read wanted %zu, got %zd\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"write of segment %d failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @elf_coredump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elf_coredump(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sseg_closure, align 8
  %9 = alloca %struct.sbuf*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_2__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.ptrace_io_desc, align 8
  %19 = alloca i32, align 4
  %20 = alloca [8192 x i8], align 16
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* @g_pid, align 4
  %24 = load i32, i32* @elf_detach, align 4
  %25 = call i64 @atexit(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %3
  store i64 0, i64* @errno, align 8
  %30 = load i32, i32* @PT_ATTACH, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @ptrace(i32 %30, i32 %31, i32* null, i32 0)
  %33 = load i64, i64* @errno, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %29
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @waitpid(i32 %38, i32* @g_status, i32 0)
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %37
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @readmap(i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = getelementptr inbounds %struct.sseg_closure, %struct.sseg_closure* %8, i32 0, i32 0
  store i32 0, i32* %46, align 8
  %47 = getelementptr inbounds %struct.sseg_closure, %struct.sseg_closure* %8, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @cb_size_segment, align 4
  %50 = call i32 @each_dumpable_segment(i32 %48, i32 %49, %struct.sseg_closure* %8)
  %51 = call %struct.sbuf* (...) @sbuf_new_auto()
  store %struct.sbuf* %51, %struct.sbuf** %9, align 8
  %52 = getelementptr inbounds %struct.sseg_closure, %struct.sseg_closure* %8, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 1, %53
  %55 = sext i32 %54 to i64
  %56 = mul i64 16, %55
  %57 = add i64 4, %56
  store i64 %57, i64* %11, align 8
  %58 = getelementptr inbounds %struct.sseg_closure, %struct.sseg_closure* %8, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  %61 = load i32, i32* @PN_XNUM, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %43
  %64 = load i64, i64* %11, align 8
  %65 = add i64 %64, 4
  store i64 %65, i64* %11, align 8
  br label %66

66:                                               ; preds = %63, %43
  %67 = load %struct.sbuf*, %struct.sbuf** %9, align 8
  %68 = call i32 @sbuf_start_section(%struct.sbuf* %67, i32* null)
  %69 = load %struct.sbuf*, %struct.sbuf** %9, align 8
  %70 = call i32 @sbuf_start_section(%struct.sbuf* %69, i32* %15)
  %71 = load %struct.sbuf*, %struct.sbuf** %9, align 8
  %72 = call i32 @sbuf_putc(%struct.sbuf* %71, i32 0)
  %73 = load %struct.sbuf*, %struct.sbuf** %9, align 8
  %74 = load i32, i32* %15, align 4
  %75 = load i64, i64* %11, align 8
  %76 = call i32 @sbuf_end_section(%struct.sbuf* %73, i32 %74, i64 %75, i32 0)
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.sbuf*, %struct.sbuf** %9, align 8
  %79 = call i32 @elf_putnotes(i32 %77, %struct.sbuf* %78, i64* %12)
  %80 = load %struct.sbuf*, %struct.sbuf** %9, align 8
  %81 = load i64, i64* @PAGE_SIZE, align 8
  %82 = call i32 @sbuf_end_section(%struct.sbuf* %80, i32 -1, i64 %81, i32 0)
  %83 = load %struct.sbuf*, %struct.sbuf** %9, align 8
  %84 = call i64 @sbuf_finish(%struct.sbuf* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %66
  %87 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %66
  %89 = load %struct.sbuf*, %struct.sbuf** %9, align 8
  %90 = call i8* @sbuf_data(%struct.sbuf* %89)
  store i8* %90, i8** %10, align 8
  %91 = load %struct.sbuf*, %struct.sbuf** %9, align 8
  %92 = call i64 @sbuf_len(%struct.sbuf* %91)
  store i64 %92, i64* %13, align 8
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %7, align 4
  %96 = load i8*, i8** %10, align 8
  %97 = load i64, i64* %11, align 8
  %98 = load i64, i64* %12, align 8
  %99 = load i64, i64* %13, align 8
  %100 = getelementptr inbounds %struct.sseg_closure, %struct.sseg_closure* %8, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @elf_puthdr(i32 %93, i32 %94, i32 %95, i8* %96, i64 %97, i64 %98, i64 %99, i32 %101)
  %103 = load i32, i32* %5, align 4
  %104 = load i8*, i8** %10, align 8
  %105 = load i64, i64* %13, align 8
  %106 = call i32 @write(i32 %103, i8* %104, i64 %105)
  store i32 %106, i32* %14, align 4
  %107 = load i32, i32* %14, align 4
  %108 = icmp eq i32 %107, -1
  br i1 %108, label %109, label %111

109:                                              ; preds = %88
  %110 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %111

111:                                              ; preds = %109, %88
  %112 = load i32, i32* %14, align 4
  %113 = sext i32 %112 to i64
  %114 = load i64, i64* %13, align 8
  %115 = icmp ult i64 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %118

118:                                              ; preds = %116, %111
  %119 = load i8*, i8** %10, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 4
  %121 = bitcast i8* %120 to %struct.TYPE_2__*
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i64 1
  store %struct.TYPE_2__* %122, %struct.TYPE_2__** %16, align 8
  store i32 0, i32* %17, align 4
  br label %123

123:                                              ; preds = %201, %118
  %124 = load i32, i32* %17, align 4
  %125 = getelementptr inbounds %struct.sseg_closure, %struct.sseg_closure* %8, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp slt i32 %124, %126
  br i1 %127, label %128, label %204

128:                                              ; preds = %123
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  store i32 %131, i32* %19, align 4
  %132 = load i32, i32* @PIOD_READ_D, align 4
  %133 = getelementptr inbounds %struct.ptrace_io_desc, %struct.ptrace_io_desc* %18, i32 0, i32 3
  store i32 %132, i32* %133, align 8
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = inttoptr i64 %136 to i32*
  %138 = getelementptr inbounds %struct.ptrace_io_desc, %struct.ptrace_io_desc* %18, i32 0, i32 2
  store i32* %137, i32** %138, align 8
  br label %139

139:                                              ; preds = %187, %128
  %140 = load i32, i32* %19, align 4
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %142, label %198

142:                                              ; preds = %139
  %143 = load i32, i32* %19, align 4
  %144 = sext i32 %143 to i64
  %145 = icmp ugt i64 %144, 8192
  br i1 %145, label %146, label %147

146:                                              ; preds = %142
  store i64 8192, i64* %21, align 8
  br label %150

147:                                              ; preds = %142
  %148 = load i32, i32* %19, align 4
  %149 = sext i32 %148 to i64
  store i64 %149, i64* %21, align 8
  br label %150

150:                                              ; preds = %147, %146
  %151 = getelementptr inbounds [8192 x i8], [8192 x i8]* %20, i64 0, i64 0
  %152 = getelementptr inbounds %struct.ptrace_io_desc, %struct.ptrace_io_desc* %18, i32 0, i32 0
  store i8* %151, i8** %152, align 8
  %153 = load i64, i64* %21, align 8
  %154 = trunc i64 %153 to i32
  %155 = getelementptr inbounds %struct.ptrace_io_desc, %struct.ptrace_io_desc* %18, i32 0, i32 1
  store i32 %154, i32* %155, align 8
  %156 = load i32, i32* @PT_IO, align 4
  %157 = load i32, i32* %6, align 4
  %158 = bitcast %struct.ptrace_io_desc* %18 to i32*
  %159 = call i32 @ptrace(i32 %156, i32 %157, i32* %158, i32 0)
  %160 = getelementptr inbounds %struct.ptrace_io_desc, %struct.ptrace_io_desc* %18, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  store i32 %161, i32* %22, align 4
  %162 = load i32, i32* %22, align 4
  %163 = sext i32 %162 to i64
  %164 = load i64, i64* %21, align 8
  %165 = icmp ult i64 %163, %164
  br i1 %165, label %166, label %170

166:                                              ; preds = %150
  %167 = load i64, i64* %21, align 8
  %168 = load i32, i32* %22, align 4
  %169 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i64 %167, i32 %168)
  br label %170

170:                                              ; preds = %166, %150
  %171 = load i32, i32* %5, align 4
  %172 = getelementptr inbounds [8192 x i8], [8192 x i8]* %20, i64 0, i64 0
  %173 = load i64, i64* %21, align 8
  %174 = call i32 @write(i32 %171, i8* %172, i64 %173)
  store i32 %174, i32* %22, align 4
  %175 = load i32, i32* %22, align 4
  %176 = icmp eq i32 %175, -1
  br i1 %176, label %177, label %180

177:                                              ; preds = %170
  %178 = load i32, i32* %17, align 4
  %179 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %178)
  br label %180

180:                                              ; preds = %177, %170
  %181 = load i32, i32* %22, align 4
  %182 = sext i32 %181 to i64
  %183 = load i64, i64* %21, align 8
  %184 = icmp ne i64 %182, %183
  br i1 %184, label %185, label %187

185:                                              ; preds = %180
  %186 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %187

187:                                              ; preds = %185, %180
  %188 = load i64, i64* %21, align 8
  %189 = load i32, i32* %19, align 4
  %190 = sext i32 %189 to i64
  %191 = sub i64 %190, %188
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %19, align 4
  %193 = load i32, i32* %22, align 4
  %194 = getelementptr inbounds %struct.ptrace_io_desc, %struct.ptrace_io_desc* %18, i32 0, i32 2
  %195 = load i32*, i32** %194, align 8
  %196 = sext i32 %193 to i64
  %197 = getelementptr inbounds i32, i32* %195, i64 %196
  store i32* %197, i32** %194, align 8
  br label %139

198:                                              ; preds = %139
  %199 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 1
  store %struct.TYPE_2__* %200, %struct.TYPE_2__** %16, align 8
  br label %201

201:                                              ; preds = %198
  %202 = load i32, i32* %17, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %17, align 4
  br label %123

204:                                              ; preds = %123
  %205 = load %struct.sbuf*, %struct.sbuf** %9, align 8
  %206 = call i32 @sbuf_delete(%struct.sbuf* %205)
  %207 = load i32, i32* %7, align 4
  %208 = call i32 @freemap(i32 %207)
  ret void
}

declare dso_local i64 @atexit(i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @ptrace(i32, i32, i32*, i32) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @readmap(i32) #1

declare dso_local i32 @each_dumpable_segment(i32, i32, %struct.sseg_closure*) #1

declare dso_local %struct.sbuf* @sbuf_new_auto(...) #1

declare dso_local i32 @sbuf_start_section(%struct.sbuf*, i32*) #1

declare dso_local i32 @sbuf_putc(%struct.sbuf*, i32) #1

declare dso_local i32 @sbuf_end_section(%struct.sbuf*, i32, i64, i32) #1

declare dso_local i32 @elf_putnotes(i32, %struct.sbuf*, i64*) #1

declare dso_local i64 @sbuf_finish(%struct.sbuf*) #1

declare dso_local i8* @sbuf_data(%struct.sbuf*) #1

declare dso_local i64 @sbuf_len(%struct.sbuf*) #1

declare dso_local i32 @elf_puthdr(i32, i32, i32, i8*, i64, i64, i64, i32) #1

declare dso_local i32 @write(i32, i8*, i64) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @sbuf_delete(%struct.sbuf*) #1

declare dso_local i32 @freemap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
